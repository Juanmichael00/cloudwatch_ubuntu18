<b>RESUMO:</b><br>Configuração do CloudWatch em Ubuntu 18.04 para coleta de estatística.

<b>Vídeo da implementação do Railander: https://www.youtube.com/watch?v=k2UnGzWSWd0</b>

------------------------------------------------------------------------------

<b>1- </b>Atachar a politica: (CloudWatchMonitoring.json do repositório) na instância que deseja coletar.

------------------------------------------------------------------------------

<b>2-</b> Executar as seguintes linhas no terminal: (usar <b>install_sp.sh</b> se estiver em SP)

cd /tmp<br>
sudo wget https://raw.githubusercontent.com/juanmichael00/cloudwatch_ubuntu18/main/install_oregon.sh<br>

sudo chmod +x install_virginia.sh<br>

sudo ./install_virginia.sh<br>

------------------------------------------------------------------------------

<b>3-</b> Aguardar 1 minuto para coleta e depois poderá criar o dashboard para visualização.
