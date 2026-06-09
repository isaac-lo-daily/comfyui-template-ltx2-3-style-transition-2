# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.8.4-base

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/

# user-provided inputs override the auto-generated placeholders above.
RUN wget --progress=dot:giga -O '/comfyui/input/ltx23_flf2v_last_frame.png' "https://cool-anteater-319.convex.cloud/api/storage/5e5395d5-af8c-403e-85eb-31fd36dad8e8"
RUN wget --progress=dot:giga -O '/comfyui/input/ltx23_flf2v_first_frame.png' "https://cool-anteater-319.convex.cloud/api/storage/985df977-ecbc-4c40-bfaf-8935dfee3b25"
