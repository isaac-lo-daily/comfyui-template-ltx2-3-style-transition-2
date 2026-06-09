# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.8.4-base

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/

# user-provided inputs override the auto-generated placeholders above.
RUN wget --progress=dot:giga -O '/comfyui/input/ltx23_flf2v_last_frame.png' "https://cool-anteater-319.convex.cloud/api/storage/556d18b7-878c-49db-9a23-9b68a3284a8d"
RUN wget --progress=dot:giga -O '/comfyui/input/ltx23_flf2v_first_frame.png' "https://cool-anteater-319.convex.cloud/api/storage/a9b244a0-89df-4ba1-87a3-51d78ec23acb"
