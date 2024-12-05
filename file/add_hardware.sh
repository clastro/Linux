lsblk #하드웨어 점검
fdisk -l #로도 점검 가능

fdisk /dev/nvme1n1 -> n,p,w #메뉴얼에 따른 명령어 입력 후 partition 생성 및 수정

mkfs.ext4 /dev/nvme1n1p1 #ext4로 포맷

mount /dev/nvme1n1p1 /folder #folder에 연결

sudo nano /etc/fstab #메모장 열어서

/dev/nvme1n1  /ssd2t  ext4  defaults  0  2 #다음과 같이 설정
