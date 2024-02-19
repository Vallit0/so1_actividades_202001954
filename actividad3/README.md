# Actividad 3 
## Universidad de San Carlos de Guatemala
## Sistemas Operativos 1 
### Estuardo Sebastián Valle Bances
### 202001954
### Ejecutamos BASH (Creacion del SCRIPT)
```bash
sudo nano /usr/local/bin/saludo_202001965.sh

```

![image](https://github.com/Vallit0/so1_actividades_202001954/assets/79114580/162922b1-1710-440c-9446-ba555bebbf31)

### Creamos ejecutable 
![image](https://github.com/Vallit0/so1_actividades_202001954/assets/79114580/424cb093-4f5d-4b5a-a8fb-5ce9a4031453)
```bash
sudo chmod +x /usr/local/bin/saludo_202001965.sh


```
### Creamos el servicio 
```bash
sudo nano /etc/systemd/system/saludo_202001954.service
```
![image](https://github.com/Vallit0/so1_actividades_202001954/assets/79114580/a050ac73-0000-44c8-a501-37cf4b02d95f)

## Habilitamos el servicio
```bash
sudo systemctl daemon-reload
sudo systemctl enable saludo_fecha.service

```
![image](https://github.com/Vallit0/so1_actividades_202001954/assets/79114580/9a0e0719-7f20-4e18-b7f7-0c30424bc7fe)
![image](https://github.com/Vallit0/so1_actividades_202001954/assets/79114580/29cd43b7-a915-4a68-9a75-99b7b776e6c1)
## Ejecutamos manualmente y mostramos resultado 
```bash
sudo systemctl start saludo_fecha.service

sudo journalctl -u saludo_fecha.service


```
![image](https://github.com/Vallit0/so1_actividades_202001954/assets/79114580/ad7c700d-c689-407c-b3fd-ce802ed8b48a)
