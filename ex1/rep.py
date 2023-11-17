import os
import subprocess
import shutil


class Reproduce:
    def __init__(self, repeat, root_dir):
        self.repeat = repeat
        self.root_dir = root_dir
        self.statistics = {}

    def change_file_format(self):
        all_files = [f for f in os.listdir(self.root_dir)
                     if os.path.isfile(os.path.join(self.root_dir, f))]
        asm_files = [i for i in all_files if i.split(".")[-1] == "asm"]
        for i in range(len(asm_files)):
            os.makedirs(os.path.join(self.root_dir, f"vio{i + 1}"))
            for j in ["violation.asm", "config.yaml", "report.txt"]:
                file = j.split(".")[0] + "-" + asm_files[i].split("-")[1] + "-" + \
                       asm_files[i].split("-")[2].split(".")[0] + "." + j.split(".")[1]
                if file in all_files:
                    new_path = os.path.join(self.root_dir, f"vio{i + 1}",
                                            f"{j.split('.')[0][:3]}{i + 1}.{j.split('.')[-1]}")
                    print(new_path)
                    os.rename(os.path.join(self.root_dir, file), new_path)

        print(asm_files)

    def run(self):
        all_folders = ["vio" + str(i) for i in sorted([int(j.split("o")[1])
                                                       for j in os.listdir(self.root_dir)])]
        for folder in all_folders:
            folder_path = os.path.join(self.root_dir, folder)
            if os.path.isdir(folder_path):
                asm_file = os.path.join(folder_path, f'{os.path.basename(folder)}.asm')
                self.statistics[folder] = 0
                for i in range(self.repeat):
                    if os.path.isfile(asm_file):
                        command = f'rvzr fuzz -s base.json -c config.yaml -t {asm_file} -i 100'
                        print(f'reproducing violations number {folder.split("o")[-1]}...')
                        output = subprocess.getoutput(command)
                        print(output)
                        if 'Violations: 1' in output:
                            print(f'a violation was found in {folder}.asm')
                            self.statistics[folder] += 1
                        elif 'Violations: 0' in output:
                            print(f'no violations found in {folder}.asm')

    def print_statistics(self):
        print('Statistics for ASM files:')
        for asm_file, count in self.statistics.items():
            print(f'{asm_file}: {-count} violations')

    def organize_in_folders(self):
        for source_folder, target_folder in self.statistics.items():
            source_path = os.path.join(self.root_dir, source_folder)
            target_path = os.path.join(self.root_dir, str(target_folder))

            # Check if the source folder exists
            if os.path.exists(source_path):
                # Check if the target folder exists, create it if not
                if not os.path.exists(target_path):
                    os.makedirs(target_path)

                # Move the source folder to the target folder
                shutil.move(source_path, target_path)
                print(f'Moved {source_folder} to {target_folder}')
            else:
                print(f'Source folder {source_folder} not found.')


root = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'violations')
rep = Reproduce(2, root)
rep.change_file_format()
rep.run()
rep.print_statistics()
rep.organize_in_folders()

