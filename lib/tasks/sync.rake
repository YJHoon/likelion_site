namespace :sync do
  desc '현재 프로덕션의 DB정보를 로컬 DB에 패치합니다.'
  task db: :environment do
    start = Time.current
    sync_time_record = start.strftime("%Y%m%d")
    project = 'likelion_site'
    sql_file_name = "#{project}_#{sync_time_record}.sql"
    # server_ip = '172.31.37.160'
    server_ip = '15.165.112.41'
    ssh_target = "ubuntu@#{server_ip}"
    # ssh_target = "deploy@#{server_ip}"
    ssh_cmd = "ssh #{ssh_target}"
    dump = "#{ssh_cmd} pg_dump #{project}_production > #{sql_file_name}"
    sync = "scp #{ssh_target}:~/#{sql_file_name} .; rails db:drop; rails db:create; psql #{project}_development < #{sql_file_name}; rails db:migrate"
    remove1 = "#{ssh_cmd} rm -rf #{sql_file_name}"
    remove2 = "rm -rf #{sql_file_name}"

    puts "========== 프로덕션 DB DUMP를 시작합니다 =========="
    system(dump)
    # puts "========== 로컬에 덤프받은 sql을 패치합니다 =========="
    # system(sync)
    # puts "========== 사용완료한 sql 파일을 삭제합니다 =========="
    # system(remove1)
    # system(remove2)
    puts "========== DB 정보를 모두 받아왔습니다 =========="

    sync_assets = "rsync -arv #{ssh_target}:/home/deploy/#{project}/shared/public ./"

    puts "========== 프로덕션의 asset 정보를 가져옵니다 =========="
    system(sync_assets)
    puts "========== 프로덕션의 asset 정보를 모두 받아왔습니다 =========="

    elapsed_time = Time.current - start
    puts("========== 작업 소요 시간 : #{Time.at(elapsed_time).utc.strftime('%M:%S')} ==========")
  end
end