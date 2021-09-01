one_number <- 65


one_number
sleep

mean(sleep[,1])


esoph
boxplot(esoph$ncontrols)
max(esoph$ncontrols, na.rm = TRUE)

sleep
sleep_pos <- sleep[(sleep$extra > 0),]
sleep_pos
sleep_pos_avg <- mean(sleep_pos[,1])
sleep_pos_avg

esoph
max.nummer <- max(esoph$ncases, na.rm = TRUE)
which (esoph$ncases == max.nummer)
which.max(esoph$ncases)

esoph[max(esoph$ncases, na.rm = TRUE),]

getwd()
diseases <- read.table("diseases.txt", header = TRUE, sep = "\t", stringsAsFactors = TRUE)
diseases

diseases$