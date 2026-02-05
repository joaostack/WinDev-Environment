<p align="center"><img width="400" height="400" title="Logo gerada por IA" alt="logo" src="https://github.com/user-attachments/assets/8718fb9e-d522-4ff4-a4c1-a086b34511dd" /></p>
<p align="center">Configuração do meu Windows voltado para o desenvolvimento DotNET/C#.</p>

(NÃO CONCLUIDO, ESPERE ATÉ A CONCLUSÃO).

## Prefácio
Últimamente usar o **Windows 11** têm-se tornado uma tarefa desafiadora para alguns quando trata-se de _otimização_, _estabilidade_ e _segurança_.

De maneira definitiva, permaneci no **Windows** mesmo depois de ter passado os últimos 5 anos usando **Linux** como sistema operacional principal.

O porque de eu me manter no **Windows** foi quando comecei a ter o seguinte pensamento: _Não faz o menor sentido passar horas configurando um ambiente Linux e ainda ter certa falta de suporte em certos softwares/games (sem generalização, amo **Linux**)._ Além de me ocorrer problemas de desempenho e suporte relacionado a minha **GPU**.

Então, aqui, compartilho minha configuração do meu ambiente de desenvolvimento **DotNET**/**C#** com base **NeoVim**, **PowerShell 7** + **Windows Terminal** + **StarShip**.

## Introdução: Configurações básicas
Para um melhor suporte a softwares de terceiros, sem assinaturas (ou até seus softwares) e execução de scripts **PowerShell**, ative o modo desenvolvedor que pode ser encontrado em:

```Settings -> System -> Advanced -> Developer Mode```

Também defina o **Windows Terminal** como aplicativo de terminal padrão. Essa opção pode ser localizada na mesma seção do modo desenvolvedor.

Por questões práticas, recomendo ativar o '**sudo**' também (vai ajudar bastante, você não vai precisar reabrir um terminal como adminstrador).

## Ambiente WSL e Windows SandBox
Este passo é opcional, mas caso queira ter um sistema linux dentro do seu windows, ative em:

```Settings -> System -> Optional features -> More Windows Features```

Ative a opção **Windows Subsystem for Linux** e **Windows Sandbox** (ambiente isolado, uso para testar softwares).

Após isso reinicie seu computador e entre até o repositório do GitHub:
[WSL](https://github.com/microsoft/WSL/releases)

Baixe e instale a versão mais recente (isso vai instalar a última versão do WSL).

Para listar as distros disponíveis para instalar, rode o seguinte comando:
```powershell
wsl --list -o
```
Em seguida instale o sistema de sua preferência com:
```powershell
wsl --install <nome>
```

## Instalando a versão mais recente do PowerShell
As versões que estão pré-instaladas no windows são versões antigas (5.1) e com certos problemas de desempenho (além de não possuir o autocomplete nativo kk).

Para resolver este problema, abra o seu windows terminal e digite:
```powershell
winget install Microsoft.PowerShell
```

## Configurando o Windows Terminal
Se por acaso o windows terminal não existir na sua máquina, instale atráves deste repositório:
[Terminal](https://github.com/microsoft/terminal/releases)

(Ou pela Microsoft Store).

KeyMaps úteis:
- **CTRL** + **Shift** + **T** - Nova Aba
- **CTRL** + **Shift** + **W** - Fecha aba atual
- **CTRL** + **ALT** + **1/2/3...** - Troca de aba
- **CTRL** + **Shift** + **1/2/3...** - Abre um perfil diferente
