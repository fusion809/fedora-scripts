if [[ -d $HOME/.local/lib64/SageMath ]]; then
	export SAGE_ROOT=$HOME/.local/lib64/SageMath
	export PATH=$PATH:$SAGE_ROOT
fi
