#!/system/bin/sh
expiration_date="2025-01-01"
current_date=$(date +%Y-%m-%d)
facebook="https://www.facebook.com/61567428059504"
echo "▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░
"
echo "     █▀▄▀█ █▀█ █▀▄ █░█ █░░ █▀▀
     █░▀░█ █▄█ █▄▀ █▄█ █▄▄ ██▄
▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░

• Author: Kenneth Panio
• GitHub: https://github.com/kokoro
• TikTok: https://www.tiktok.com/@atomicslashstudio
• Facebook: $facebook
• YouTube: atomicslashstudio
• Expiration: ${expiration_date}
• Version: 1.0.0
▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░
        
• Warning: Use this script at your own risk.
        The author is not responsible for
        any damages to devices resulting
        from the use of this script. It is
        the user's responsibility to ensure
        proper usage. Not all devices are
        supported by this script.
• Note: It will take longer to flash modules
        due to multiple packages being
        compiled and multiple drivers being 
        applied.
• Copyright Notice: All rights reserved. 
        This work is protected by copyright
        law. Unauthorized reproduction,
        distribution, or resale of this work
        is strictly prohibited. 
▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░
[Features] [Device Compatibility May Vary]
▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░
• Manual Custom Screen Size
• Auto Apply Game Drivers
• Auto Apply Angle-GL Drivers
• Auto Remove Bloatwares
• Auto Clear Cache
• Auto Clean Up RAM
• Auto Set MAX Screen Refresh Rate
• Auto Compile Dex pkg's to Speed
▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░
Follow our social platforms for more
future updates! or buy premium version 
to extend its usage."
if [ "$current_date" \> "$expiration_date" ]; then
echo ""
echo "This script has expired.
Contact the provider for an updated version."
sleep 4s
am start -a android.intent.action.VIEW -d "$facebook" > /dev/null 2>&1
exit 1
fi
default_size=$(wm size | awk 'NR==1 {print $3}')
default_width=$(echo "$default_size" | cut -dx -f1)
default_height=$(echo "$default_size" | cut -dx -f2)
resolution() {
  local screen_size="$1"
  if [ -z "$screen_size" ]; then
    wm size reset
    wm density reset
    return
  fi

  if echo "$screen_size" | grep -Eq '^[0-9]+x[0-9]+$'; then
    local width=$(echo "$screen_size" | cut -dx -f1)
    local height=$(echo "$screen_size" | cut -dx -f2)

    if [ "$width" -ge 144 ] && [ "$height" -ge 322 ] && [ "$width" -le "$default_width" ] && [ "$height" -le "$default_height" ]; then
      wm size "$screen_size"

      # Calculate DPI based on the actual screen size
      local dpi=$(( (width * 160) / 360 ))
      wm density "$dpi"

      echo "Screen size set to $screen_size with DPI set to $dpi."
    else
      echo ""
      echo "Invalid screen size.
Please provide a size in the format: <WidthxHeight>
Support Range: 144x322 - ${default_width}x${default_height}."
      echo ""
      exit 1
    fi
  else
    echo ""
    echo "Invalid screen size format.
Please provide size in the format: <WidthxHeight>
Support Range: 144x322 - ${default_width}x${default_height}."
    echo ""
    exit 1
  fi
}

if [ -n "$1" ]; then
  resolution "$1" 
else
  wm size reset > /dev/null 2>&1
  wm density reset > /dev/null 2>&1
fi
echo "▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░
[!] Optional: Screen Size Adjustment 
    Usage: <script>.sh <WidthxHeight>
▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░
"
setprop debug.hwui.renderer vulkan > /dev/null 2>&1
setprop debug.composition.type skiavk > /dev/null 2>&1

sleep 1s
echo "   • Name: $(getprop ro.product.model) "
echo "   • Renderer: $(getprop debug.hwui.renderer) "
echo "   • GPU: $(getprop ro.hardware.egl) "
echo "   • Chipset: $(getprop ro.board.platform) "
echo "   • Battery Level: $(dumpsys battery | grep level | awk '{print $2}')%"
echo "   • Default Resolution: $default_size"
current_resolution=$(wm size | awk 'NR==2 {print $3}')
if [ -z "$current_resolution" ]; then
    current_resolution="Default"
fi
echo "   • Current Resolution: $current_resolution"
max_refresh_rate=$(dumpsys display | grep 'alternativeRefreshRates' | awk -F'[][]' '{print $2}' | tr ',' '\n' | sort -n | tail -n 1)
echo "   • Maximum Refresh Rate: $max_refresh_rate Hz"
echo "   • Network Type: $(getprop gsm.network.type)"
echo "   • Current Locale: $(getprop persist.sys.locale)"
echo "   • Device Serial Number: $(getprop ro.serialno)"
echo "   • Physical Density: $(wm density | grep -o '[0-9]*' | head -n 1)"
echo "   • Override Density: $(wm density | grep -o '[0-9]*' | awk 'NR==2')"
echo "   • Cores: $(cat /proc/cpuinfo | grep processor | wc -l)"
echo "   • CPU Usage: $(top -n 1 | grep 'CPU:' | awk '{print $3}')%"
echo "   • Total RAM: $(cat /proc/meminfo | grep MemTotal | awk '{print $2/1024/1024}') GB"
echo "   • Free RAM: $(cat /proc/meminfo | grep MemAvailable | awk '{print $2/1024/1024}') GB"
echo "   • Model: $(getprop ro.build.product) "
echo "   • Kernel: $(uname -r) "
echo "   • Android: $(getprop ro.build.version.release) "
echo "   • SDK: $(getprop ro.build.version.sdk) "
echo "   • Arch: $(getprop ro.product.cpu.abi) "
echo "▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░
[•] Flashing Module...
▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄
░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░ ░░
"
exclude_packages=(
  "me.piebridge.brevent"
  "bin.mt.plus.canary"
  "bin.mt.plus"
  "com.rhmsoft.code"
  "com.kimcy929.screenrecorder"
)

packages=(
  "com.sega.pjsekai"
  "com.mobile.legends"
  "com.miHoYo.GenshinImpact"
  "com.netease.newspike"
  "com.proximabeta.nikke"
  "com.miHoYo.enterprise.NGHSoDBak"
  "com.garena.game.codm"
  "com.mobilelegends.hwag"
  "com.supercell.clashofclans"
  "com.DVloper.Granny"
  "com.activision.callofduty.shooter"
  "com.activision.callofduty.warzone"
  "com.tencent.ig"
  "com.roblox.client"
  "io.github.lime3ds.android"
  "io.github.mandarine3ds.mandarine"
  "com.antutu.ABenchMark"
  "org.citra.citra_emu"
  "com.FrikjumnoGames.GrannyResurgence"
  "com.mojang.minecraftpe"
)

secure_pkgs=(
  "com.draco.mfstrim"
  "by4a.setedit22"
  "com.draco.purr"
)

settings_bloatware=(
"com.trassion.infinix.xclub"
"com.transsion.wifiplaytogether"
"com.facebook.services"
"net.bat.store"
"com.transsnet.store"
"com.trinetvpn.prov2"
"com.biomes.vanced"
"com.smartlife.nebula"
"com.cerdillac.proccd"
"com.pyypl"
"com.stephaneginier.nomad"
"com.maxmpz.audioplayes"
"com.mediafire.android"
"ru.mail.mailapp"
"com.codeliber.jspro"
"com.codepoint.learnpython3pro"
"com.meenstudio.pybook"
"com.digitalchemy.calculator.freefraction"
"com.sweetrsoft.fakemessenger"
"org.chromium.webapk.ab3fc8c03ce2d9756_v2"
"com.dencreak.dlcalculator"
"com.pinoy.pmedia"
"com.autoliker.miner"
"com.transsion.carlcare"
"net.bat.store"
"com.transsnet.store"
"com.mediaon.apt"
"com.transsion.tecnospot"
"com.funbase.xradio"
"com.talpa.share"
"com.rlk.weathers"
"com.krazeapps.csharpprogrammingcompiler"
"com.google.android.apps.youtube.music"
"com.talpa.hibrowser"
"com.transsion.hiparty"
"com.transsion.magazineservice.hios"
"com.zaz.translate"
"com.transsion.phonemaster"
"com.google.android.apps.wellbeing"
"com.google.android.apps.meetings"
"com.transsion.magicshow"
"com.facebook.services"
"com.google.android.projection.gearhead"
"com.transsion.plat.appupdate"
"com.google.android.apps.googleassistant"
"com.android.bbklog"
"com.android.bbkmusic"
"com.bbk.account"
"com.bbk.cloud"
"com.bbk.iqoo.logsystem"
"com.bbk.photoframewidget"
"com.bbk.scene.indoor"
"com.bbk.SuperPowerSave"
"com.baidu.duersdk.opensdk"
"com.baidu.input_vivo"
"com.facebook.appmanager"
"com.facebook.system"
"com.google.android.apps.tachyon"
"com.google.android.feedback"
"com.google.android.marvin.talkback"
"com.google.android.music"
"com.google.android.printservice.recommendation"
"com.google.android.tts"
"com.google.android.videos"
"com.qti.qualcomm.deviceinfo"
"com.qualcomm.qti.ims"
"com.qualcomm.qti.lpa"
"com.qti.confuridialer"
"com.qti.dpmserviceapp"
"com.qti.qualcomm.datastatusnotification"
"com.qualcomm.embms"
"com.qualcomm.qti.autoregistration"
"com.qualcomm.qti.callfeaturessetting"
"com.qualcomm.qti.uim"
"com.vivo.browser"
"com.vivo.appfilter"
"com.vivo.ewarranty"
"com.vivo.appstore"
"com.vivo.assistant"
"com.vivo.doubleinstance"
"com.vivo.dream.music"
"com.vivo.dream.weather"
"com.vivo.easyshare"
"com.vivo.floatingball"
"com.vivo.FMRadio"
"com.vivo.fuelsummary"
"com.vivo.gamewatch"
"com.vivo.globalsearch"
"com.vivo.vivokaraoke"
"com.vivo.livewallpaper.coffeetime"
"com.vivo.livewallpaper.coralsea"
"com.vivo.livewallpaper.floatingcloud"
"com.vivo.livewallpaper.silk"
"com.vivo.magazine"
"com.vivo.mediatune"
"com.vivo.minscreen"
"com.vivo.motormode"
"com.vivo.carmode"
"com.vivo.numbermark"
"com.vivo.pushservice"
"com.vivo.safecentercom.vivo.scanner"
"com.vivo.setupwizard"
"com.vivo.smartmultiwindow"
"com.vivo.smartshot"
"com.vivo.translator"
"com.vivo.unionpay"
"com.vivo.video.floating"
"com.vivo.videoeditor"
"com.vivo.weather"
"com.vivo.weather.provider"
"com.vivo.website"
"com.kikaoem.vivo.qisiemoji.inputmethod"
"com.android.bips"
"com.android.bookmarkprovider"
"com.android.cellbroadcastreceiver"
"com.android.cellbroadcastreceiver.overlay.common"
"com.android.dreams.basic"
"com.android.dreams.phototable"
"com.android.emergency"
"com.android.hotwordenrollment.okgoogle"
"com.android.printspooler"
"com.android.statementservice"
"com.android.stk"
"com.android.email"
"com.netflix.partner.activation"
"com.miui.weather2"
"com.miui.yellowpage"
"com.swiftkey.languageprovider"
"com.swiftkey.swiftkeyconfigurator"
"com.xiaomi.discover"
"com.xiaomi.glgm"
"com.xiaomi.joyose"
"com.xiaomi.location.fused"
"com.xiaomi.micloud.sdk"
"com.xiaomi.midrop"
"com.xiaomi.mipicks"
"com.xiaomi.miplay_client"
"com.xiaomi.mirecycle"
"com.xiaomi.oversea.ecom"
"com.xiaomi.payment"
"com.xiaomi.providers.appindex"
"com.xiaomi.xmsf"
"com.miui.providers.weather"
"com.miui.translationservice"
"com.miui.translation.kingsoft"
"com.miui.translation.xmcloud"
"com.miui.translation.youdao"
"com.miui.touchassistant"
"com.miui.userguide"
"com.mi.android.globalpersonalassistant"
"com.mi.dlabs.vr"
"com.mi.globalTrendNews"
"com.mi.global.bbs"
"com.mi.global.shop"
"com.mi.webkit.core"
"com.micredit.in"
"com.milink.service"
"com.mipay.wallet.id"
"com.mipay.wallet.in"
"com.miui.analytics"
"com.miui.bugreport"
"com.miui.cloudbackup"
"com.miui.cloudservice"
"com.miui.cloudservice.sysbase"
"com.miui.micloudsync"
"com.miui.hybrid"
"com.miui.hybrid.accessory"
"com.miui.klo.bugreport"
"com.miui.miservice"
"com.miui.msa.global"
"com.sohu.inputmethod.sogou.xiaomi"
"com.xiaomi.discover"
"com.xiaomi.channel"
"com.xiaomi.joyose"
"com.xiaomi.micloud.sdk"
"com.xiaomi.location.fused"
"com.xiaomi.mi_connect_service"
"com.xiaomi.micloud.sdk"
"com.xiaomi.midrop"
"com.xiaomi.mipicks"
"com.xiaomi.miplay_client"
"com.xiaomi.mircs"
"com.xiaomi.mirecycle"
"com.xiaomi.mirror"
"com.xiaomi.simactivate.service"
)

settings_bloatware_service=(
"com.transsion.calculator"
"com.google.android.calendar"
"com.nglreactnative"
"omegle.tv"
"com.scathachgrip.enikk"
"com.instagram.barcelona"
"ru.ipydpzox.ztctqsirf"
"com.bstar.intl"
"com.discord"
"com.zhiliaoapp.musically"
"com.ss.android.ugc.trill"
"org.torproject.torbrowser"
"com.shopee.ph"
"omegle.tv"
"com.proximabeta.nikke"
"com.google.earth"
"com.dubox.drive"
"com.bluecord"
"com.instagram.android"
"com.twitter.android"
"com.google.android.ims"
"com.google.android.gms"
"com.facebook.katana"
"com.facebook.lite"
"com.facebook.lite.xyz"
"com.facebook.orca"
"com.google.android.youtube"
"com.google.android.gms/com.google.android.libraries.social.mediamonitor.MediaMonitor"
"com.google.android.gms/com.google.android.libraries.social.mediamonitor.MediaMonitorIntentService"
"com.google.android.gms/com.google.android.location.activity.HardwareArProviderService"
"com.google.android.gms/com.google.android.location.copresence.GcmRegistrationReceiver"
"com.google.android.gms/com.google.android.location.copresence.GservicesBroadcastReceiver"
"com.google.android.gms/com.google.android.location.fused.FusedLocationService" 
"com.google.android.gms/com.google.android.location.fused.service.FusedProviderService"
)

settings_compiler=(
# Available runtime config:
# - shared: third-party apps (e.g., libraries, dependencies)
# - core-app: system apps (e.g., main application)
# Compilation for shared (third-party apps):
"compile -r shared reconcile-secondary-dex-files -f"
"compile -r shared reconcile-secondary-dex-files"
"compile -r shared --compile-layouts -f"
"compile -r shared --compile-layouts"
"compile -r shared --secondary-dex -f"
"compile -r shared --check-prof true -f"
"compile -r shared --check-prof true"
"compile -r shared --secondary-dex -f"
"compile -r shared --secondary-dex"
"compile -r shared reconcile-secondary-dex-files -f"
"compile -r shared reconcile-secondary-dex-files"
# Keep this line untouched for dex optimization
"force-dex-opt"
"reconcile-secondary-dex-files"
# if you want to use speed profile it only works if you turn all of the dex optimize config into comments and remove comment of these two:
# "compile -m speed -f" 
# "compile -m speed"    
# Available dex optimization config:
# - everything: Optimizes everything, including all code and resources
# - speed: Focuses on optimizing for speed, prioritizing performance
"compile -m speed --check-prof true -f"
"compile -m speed --check-prof true"
"compile -m speed --secondary-dex -f"
"compile -m speed --secondary-dex"
"compile -m speed reconcile-secondary-dex-files -f"
"compile -m speed reconcile-secondary-dex-files"
"compile -m speed --compile-layouts -f"
"compile -m speed --compile-layouts"
)

settings_debug=(
"thread.boost_on_input 1"
"cpu_core_ctrl_hispeed_load 80"
"cpu_efficiency 1.0"
"cpu.driver_use_multicore true"
"cpu_core_ctl_offline_delay_ms 500"
"cpu_little_cluster_suspended 1"
"little_cpu_count 1"
"big_cpu_count 8"
"cluster_big-set_his_speed $(cat /sys/devices/system/cpu/cpu1/cpufreq/cpuinfo_max_freq)"
"cluster_little-set_his_speed $(cat /sys/devices/system/cpu/cpu1/cpufreq/cpuinfo_max_freq)"
"javafx.animation.fullspeed true"
"javafx.animation.framerate $max_refresh_rate"
"gralloc.gfx_ubwc_disable 0"
"mdpcomp.logs -"
"log.tag.MParticle -"
"log.tag.SQLiteStatements -"
"log.tag.SQLiteLog -"
"log.tag.FA-SVC -"
"log.tag.FA -"
"log.tag.GAv4 -"
"log.tag.stats_log -"
"log.tag.APM_AudioPolicyManager -"
"log.tag.ALL -"
"performance.cap uncapped"
"thermal.disable_hotplug 0"
"thermal.monitoring_show_emul_temp 0"
"thermal.core_control_enabled 0"
"thermal.monitoring_enabled 0"
"thermal.monitoring_level 3"
"thermal.event_logging 0"
"thermal.low_temp_limit 20"
"thermal.threshold_temp 95"
"thermal.high_temp_limit 95"
"sys.sf.color_saturation 1.0"
"sys.sf.color_mode vivid"
"sys.sf.transition_animation_scale 0.5"
"sys.sf.enable_vds 1"
"sys.sf.composition_type hybrid"
"sys.sf.frame_rate $max_refresh_rate"
"sys.sf.disable_buffer_shrink 0"
"sys.sf.disable_blending 1"
"sys.sf.max_frame_rate $max_refresh_rate"
"sys.sf.disable_double_buffering 1"
"sys.sf.disable_vsync 1"
"sys.sf.enable_debug_tracing 0"
"sys.sf.disable_idle_composition 0"
"sys.sf.disable_hw_vsync 1"
"sys.sf.disable_composition_caching 0"
"sys.sf.disable_fb_caching 0"
"sys.sf.disable_async_composition 0"
"sys.sf.enable_texture_slicer 1"
"sys.sf.disable_out_of_order_optimization 0"
"sys.sf.disable_fallback_caching 0"
"sys.sf.disable_layer_caching 0"
"sys.sf.disable_overlay_caching 0"
"sys.sf.disable_expensive_blur 1"
"sys.sf.disable_global_refresh 1"
"sys.sf.disable_buffer_shrink 1"
"sys.sf.disable_double_buffering 1"
"sys.sf.frame_rate_override $max_refresh_rate"
"sys.sf.swap_interval 0"
"sys.sf.use_buffer_queue 1"
"sys.sf.use_color_management 0"
"sys.sf.use_hwc_2 1"
"sys.sf.use_shadow 0"
"sys.sf.use_trilinear 0"
"sys.sf.enable_fb_early_synchronize 1"
"sys.sf.enable_fb_pre_post 1"
"sys.sf.enable_fb_ubwc 0"
"sys.sf.enable_texture_pooling 1"
"sys.sf.force_flex_comp 1"
"sys.sf.gpu_memcg.enabled 0"
"sys.sf.lss.early_completion 1"
"sys.sf.lss.enable 1"
"sys.sf.rc_flags 1"
"sys.sf.use_color_cache 1"
"sys.sf.use_image_cache 1"
"sys.sf.use_overlay_cache 1"
"sys.sf.use_shader_cache 1"
"sys.sf.use_surface_cache 1"
"sys.sf.wait_for_gpu_idle 0"
"sys.sf.disable_drop_shadow 1"
"sys.sf.disable_surface_peeking 1"
"sys.sf.disable_texture_retrieval 1"
"sys.sf.enable_async_texture_upload 1"
"sys.sf.enable_buffer_prefetch 1"
"sys.sf.enable_gpu_rescale 1"
"sys.sf.enable_multi_process_composition 1"
"sys.sf.enable_perf_optimized_pipe 1"
"sys.sf.enable_reduced_frame_memory 1"
"sys.sf.enable_surface_optimization 1"
"sys.sf.enable_texture_preload 1"
"sys.sf.use_hw_render_node 1"
"sys.sf.disable_blur 1"
"sys.sf.disable_gpu_driver_blacklist 1"
"sys.sf.disable_gpu_fence_sync 1"
"sys.sf.disable_hwc_layer_stretch 1"
"sys.sf.disable_lowmem_oom_handling 1"
"sys.sf.disable_shadow_cache 1"
"sys.sf.disable_swapbuffers_compression 1"
"sys.sf.enable_buffer_map_cache 1"
"sys.sf.enable_dual_layer_composition 1"
"sys.sf.enable_post_ROT 1"
"sys.sf.enable_turbo 1"
"sys.sf.enable_triple_buffer 1"
"sys.sf.enable_flinger_touch_input 1"
"sys.sf.enable_touch_latency_optimization 1"
"sys.sf.touch_boost 1"
"sys.sf.touch_input_latency_tolerance 10"
"sys.sf.touch_latency_smoothing 1"
"sys.sf.input_latency_boost 1"
"sys.sf.input_thread_affinity 1"
"sys.sf.input_thread_scheduler_policy 1"
"sys.sf.input_thread_vsync_alignment 0"
"sys.sf.input_event_rate_limit 1"
"sys.sf.input_thread_idle_priority 1"
"sys.sf.input_post_processing_latency 1"
"sys.sf.input_latency_scheduling 1"
"sys.sf.input_latency_reduction 1"
"sys.sf.input_latency_tuning 1"
"sys.sf.input_latency_prioritization 1"
"sys.sf.input_latency_interpolation 1"
"sys.sf.input_latency_adaptive_tuning 1"
"sys.sf.input_latency_prediction 1"
"sys.sf.input_latency_heuristics 1"
"sys.sf.input_latency_compensation 1"
"sys.sf.input_latency_fine_tuning 1"
"sys.sf.input_latency_multithreading 1"
"sys.sf.input_latency_prediction_models 1"
"sys.sf.input_latency_neural_networks 1"
"sys.sf.input_latency_quantum_processing 1"
"sys.sf.input_latency_resilience 1"
"sys.sf.input_latency_autocalibration 1"
"sys.sf.input_latency_adaptive_sampling 1"
"sys.sf.input_latency_temporal_filtering 1"
"sys.sf.input_latency_spatial_filtering
1"
"sys.sf.input_latency_preemption 1"
"sys.sf.input_latency_event_scheduling 1"
"sys.sf.input_latency_control_loop 1"
"sys.sf.input_latency_prediction_window 1"
"sys.sf.input_latency_response_threshold 1"
"sys.sf.input_latency_reliability_metrics 1"
"sys.sf.input_latency_prediction_accuracy 1"
"sys.sf.input_latency_prefetching 1"
"sys.sf.input_latency_preprocessing
1"
"sys.sf.input_latency_smart_sampling 1"
"sys.sf.input_latency_multi_stage_processing 1"
'sys.sf.input_latency_accelerated_processing 1'
"sys.sf.input_latency_interactive_mode 1"
"sys.sf.input_latency_realtime_adjustment 1"
"sys.sf.input_latency_heuristic_optimization 1"
"sys.sf.input_latency_parallel_processing 1"
"sys.sf.input_latency_reactive_mode 1"
"sys.sf.input_latency_temporal_adjustment 1"
"sys.sf.input_latency_priority_scheduling 1"
"sys.sf.input_latency_preemptive_caching 1"
"sys.sf.input_latency_multimodal_processing
1"
"sys.sf.input_latency_hybrid_approach 1"
"sys.sf.input_latency_tuning_mode 1"
"sys.sf.input_latency_noise_reduction 1"
"sys.sf.input_latency_dynamic_adjustment 1"
"sys.sf.input_latency_multisensory_integration 1"
"sys.sf.input_latency_perceptual_optimization 1"
"sys.sf.input_latency_adaptive_thresholding 1"
"sys.sf.input_latency_fuzzy_logic 1"
"sys.sf.input_latency_autonomous_optimization 1"
"sys.sf.input_latency_predictive_modeling 1"
"sys.sf.input_latency_multiobjective_optimization 1"
"sys.sf.input_latency_power_efficiency_tradeoff 1"
"hwui.disable_gpu_vsync false"
"hwui.render_max_threads 1"
"hwui.profile_maxframes $max_refresh_rate"
"cpu.fps $max_refresh_rate"
"sf.disable_client_composition_cache 1"
"gpu.fps $max_refresh_rate"
"egl.profile_maxframes $max_refresh_rate"
"gpurend.vsync false"
"multicore.processing $max_refresh_rate"
"scaling.governor performance"
"ro.config.hw_quickpoweron 1"
"sf.nobootanimation 1"
"performance_schema 1"
"performance_schema_max_memory_classes 320"
"performance_schema_max_socket_classes 10"
"hwui.fps_divisor -1"
"renderer.process compound"
"javafx.animation.fullspeed true"
"javafx.animation.framerate $max_refresh_rate"
"gr.swapinterval 0"
"angle.backend 2"
"ioprio 8"
"gpuprio 8"
"cpuprio 8"
"display.enable_dpps_dynamic_fps 1"
"display.enable_hdr10_gpu_target 1"
"LLCC 3"
"sf.max_fps $max_refresh_rate"
"sf.min_fps $max_refresh_rate"
"kernel.perf_event_max_sample_rate 100000"
"kernel.perf_cpu_time_max_percent 50"
"rs.default-GPU-driver 1"
"egl.force_csaa false"
"egl.force_fxaa false"
"egl.force_msaa false"
"egl.force_smaa false"
"egl.force_ssaa false"
"egl.force_taa false"
"egl.force_txaa false"
"enable_hgl 1"
"sf.fps $max_refresh_rate"
"hw.scaling.governor performance"
"performance.force 1"
"performance.disturb false"
"scaling.governor performance"
"performance.level_overdrive 1"
"multicore.processing"
"dev.disable_sched_boost true"
"rs.default-CPU-buffer 262144"
"sf.frame_rate_multiple_threshold 999"
"sf_frame_rate_multiple_fences 999"
"performance_schema_digests_size 9950000"
"gpu.scheduler_pre.emption 1"
"heat_suppression 0"
"redroid.fps $max_refresh_rate"
"dev.addfree 4"
"gfx.driver 1"
"qti.am.resource.type super-large"
"hwui.renderer.buffer dynamic-loadmulticore"
"dex2oat.threads 4"
"cpu_core_ctl_active 1"
"game.max.cpu.proc 8"
"cpu_core_ctrl_hispeed_load 90"
"cpu_core_ctrl_related_cpus 0,1,2,3,4"
"hwui.target_power_time_percent 100"
"hwui.target_cpu_time_percent 100"
"hwui.target_gpu_time_percent 100"
"dev.ssrm.turbo true"
"hwui.disabledither true"
"rs.precision rs_fp_full"
"performance.force true"
"disable.computedata true"
"rs.max-threads 8"
"rs.min-threads 8"
"performance.tuning 1"
"qsg_renderer 1"
"hwui.fps_divisor -1"
"redroid.fps $max_refresh_rate"
"renderthread.reduceopstasksplitting true"
"renderer.process compound"
"hwui.disable_draw_defer true"
"hwui.use_hint_manager true"
"cpu.input_boost"
"mtk.performance.tuning 1"
"mtk.chiptuning.enable 1"
"mtk.hu.enable 1"
"mtk.vsync.swapinterval 0"
"mtk.gpu.dcvs.level 7"
"mtk.gpuframecontrol 1"
"mtk.gpu.mode 1"
"mtkperformanceperfmode 4"
"hwui.disable_fbo_cache true"
"hwui.disable_gpu_cache true"
"hwui.disable_picture_cache true"
"hwui.disable_text_cache true"
"hwui.disable_path_cache true"
"hwui.disable_asset_cache true"
"hwui.disable_image_cache"
"hwui.layer_cache_size 128"
"hwui.path_cache_size 16"
"hwui.drop_shadow_cache_size 12"
"hwui.gradient_cache_size 4"
"hwui.enable_texture_atlas true"
"hwui.enable_overdraw_detection true"
"hwui.show_overdraw true"
"hwui.overdraw_color 0xFFFF0000"
"hwui.show_overdraw true"
"hwui.overdraw_color 0xFFFF0000"
"hwui.use_buffer_age false"
"hwui.disable_vsync false"
"hwui.render_dirty_regions false"
"performance.profile 1"
"performance.tuning 1"
"graphics.enable_tracing 1"
"hwui.use_buffer_age false"
"hwui.disable_vsync false"
"hwui.layer_cache_size 64"
"hwui.path_cache_size 8"
"hwui.drop_shadow_cache_size 6"
"hwui.gradient_cache_size 2"
"performance.profile 1"
"performance.tuning 1"
"graphics.enable_tracing 1"
"hwui.use_buffer_age false"
"hwui.disable_vsync false"
"hwui.render_dirty_regions false"
"hwui.texture_cache_size 128"
"hwui.layer_cache_size 64"
"hwui.path_cache_size 8"
"hwui.drop_shadow_cache_size 6"
"hwui.gradient_cache_size 2"
"hwui.enable_texture_atlas true"
"hwui.enable_overdraw_detection true"
"hwui.show_overdraw true"
"hwui.overdraw_color 0xFFFF0000"
"hwui.use_buffer_age false"
"hwui.disable_vsync false"
"hwui.render_dirty_regions false"
"hwui.texture_cache_size 256"
"hwui.layer_cache_size 128"
"hwui.path_cache_size 16"
"hwui.drop_shadow_cache_size 12"
"hwui.gradient_cache_size 4"
"hwui.enable_texture_atlas true"
"hwui.enable_overdraw_detection true"
"hwui.show_overdraw true"
"hwui.overdraw_color 0xFFFF0000"
"performance.tuning 1"
"performance.profile 1"
"ram.tuning true"
"ram.disable_kernel_idle true"
"ram.disable_kernel_throttling true"
"performance.disable_gpu_preemption true"
"performance.disable_responsiveness_checks true"
"performance.disable_ramp_up_on_fg_boost true"
"performance.disable_ramp_up_on_frame_drop true"
"performance.disable_ramp_up_on_input_event true"
"performance.disable_ramp_up_on_animation true"
"sf.latch_unsignaled 1"
"sf.enable_hwc_vds 1"
"sf.early.app.duration 22100000"
"sf.early.sf.duration 19600000"
"sf.earlyGl.app.duration 16300000"
"sf.earlyGl.sf.duration 11900000"
"sf.high_fps_early_phase_offset_ns 7500000"
"sf.hw 1"
"sf.perf_fps_early_gl_phase_offset_ns 600000"
"sf.disable_stencil true"
"sf.high_fps_early_gl_phase_offset_ns 9000000"
"sf.latch_unsignaled 1"
"sf.no_jit 0"
"sf.nobg_exec 1"
"sf.swapinterval 0"
"performance_schema 1"
"performance_schema_max_memory_classes 387"
"systemuicompilerfilter speed"
"app.performance_restricted false"
"gr.numframebuffers 3"
"sf.set_idle_timer_ms 30"
"sf.showcpu 0"
"gr.numframebuffers 3"
"gles.layers EGL_KHR_gl_texture_cubemap_image,EGL_KHR_gl_texture_3D_image,EGL_KHR_gl_renderbuffer_image"
"cpurend.vsync false"
"kill_allocating_task 0"
"overlayui.enable 1"
"hwui.texture_cache_size 0"
"force_rtl false"
"hw2d.force true"
"hw3d.force true"
"hwui.render_quality high"
"egl.profiler 0"
"egl.log_config 0"
"surface_flinger.vsync_sf_event_phase_offset_ns 0"
"systemui.compilerfilter speed"
"atrace.tags.enableflags 0"
"composition.frame_interval 16"
"egl.hw 0"
"egl.logging false"
"hwui.commit_delay_ms 0"
"hwui.overdraw false"
"hwui.max_frame_lag 10"
"mdpcomp.logs 0"
"hwui.use_partial_updates true"
"hwui.disable_offset true"
"hwui.enable_gl_drawing_cache 1"
"hwui.disable_draw_reorder true"
"foreground_task.boost true"
"duration_tap 50"
"slide.duration 10"
"show_refresh_rate_overlay_spinner 0"
"sf.max_igbp_list_size 7236"
"hw.hwperfmode"
"composition.type mdp"
"composition.type2 gpu"
"game.cpu.engine.type turbo"
"game.shader.technique.type compress-pack"
"game.rs.engine.type performance"
"game.drawcall.engine.type deferred"
"game.shaderops.engine.type speculate_pack"
"game.frametime.engine.type multicore_load"
"game.fps.engine.type max-perf"
"game.texture.compression.type bc4"
"game.occlusionquery.type cuda"
"game.sun.imposter.type screen-aligned"
"game.texture.filter.engine.type compile-mipmap"
"game peformance"
"game.disable_power_opt true"
"thermalservice.override.lock.status 0"
"game.jt_init_one_shot 1"
"gralloc.gfx.type ion-pack"
"hwui.use_smart_batching true"
"hwui.draw.texture.type surfacetexture"
"hwui.renderer.texture surfacetexture"
"hwui.thread_scheduler.type performance"
"renderthread.wakeup_ms 0"
"dls.weight 100"
"power.suspend_supported true"
"hwui.ffpe true"
"hwui.layer_cache_key_hashing true"
"big_cpu_count 8"
"big_core_threshold 30"
"cpu_big_cluster_suspended 0"
"cpu_core_ctl_max_cores 8"
"cpu_core_ctl_offline_delay_ms 500"
"sf.early_phase_offset_ns 500000"
"sf.early_app_phase_offset_ns 500000"
"sf.early_gl_phase_offset_ns 3000000"
"sf.early_gl_app_phase_offset_ns 15000000"
"sf.high_fps_early_phase_offset_ns 6100000"
"sf.high_fps_late_app_phase_offset_ns 100000"
"sf.phase_offset_threshold_for_next_vsync_ns 6100000"
"sf.showupdates 0"
"sf.showcpu 0"
"sf.showbackground 0"
"sf.showfps 0"
"thermal_zone.gpu_threshold_temp 95"
"thermal_zone.cpu_threshold_temp 90"
"thermal_zone.display_threshold_temp 80"
"thermal_zone.camera_hotplug_control 2"
"thermal_zone.battery_threshold_temp 60"
"thermal_zone.camera_threshold_temp 85"
"thermal_zone.cpu_hotplug_control 2"
"thermal_zone.gpu_hotplug_control 2"
)

settings_devconfig=(
"thermal cpu_threshold 80000"
"thermal hotplug_threshold 75000"
"thermal hotplug_sampling_period 10000"
"gpu gpu_temperature_limit 75000"
"cpu_power max_cpu_power 0.9"
"cpu_power cpu_max_pwr_mgmnt 0.9"
"gpu max_gpu_power 0.8"
"gpu gpu_max_pwr_mgmnt 0.8"
"jobscheduler optimization_disabled true"
"sysui/composer type auto"
)

settings_global=(
"speed_mode 1"
"play_store_auto_update 0"
"restart_on_crash 0"
"set_sync_disabled_for_tests persistent"
"reduce_transitions 1"
"settings_network_and_internet_v2 true"
"vivo_screen_refresh_rate_mode $max_refresh_rate"
"accelerated_enabled_for_all 1"
"sem_enhanced_cpu_responsiveness 1"
"enhanced_processing 2"
"cached_apps_freezer 1"
"angle_gl_driver_all_angle 1"
"zen_mode 2"
"ram_expand_size_list 4"
"power_mode_refresh_rate_cover 2"
"power_mode_refresh_rate 2"
"perftune_ram_enabled 1"
"perftune_gpu_enabled 1"
"perftune_cpu_enabled 1"
"enhanced_cpu_responsiveness 1"
"touch.presure.scale 0.001"
"activity_starts_logging_enabled 1"
"sys.gr.numframebuffers 0"
"device.egl.swapinterval 0"
"gaming_driver.swapinterval 0"
"persist.sys.spc.cpulimit.enabled 0"
"gpu_composition_policy 1"
"gpu_render_policy 1"
"sys_storage_max_cache_bytes 4096"
"zram_enabled 1"
"game_driver_fps_overlay_enabled 1"
"game_driver 1"
"game_driver_all_apps 1"
"game_driver_opt_in 1"
"game_driver_opti 1"
"game_driver_optimal_frames 1"
"game_driver_optimalization 1"
"game_gpu_optimizing 1"
"game_hd_mode 1"
"game_hdr_mode 1"
"game_home_enable 1"
"game_low_latency_mode 1"
"gpu_driver_enabled 1"
"ram_expand_size 4096"
"allow.fast.charging 1"
"net_speed_on_off 1"
"foreground_mem_priority high"
"performance.cache_size 360"
"mem_performance 1"
"hardwareAccelerated true"
"storage_preload 1"
"thread_priority highest"
"battery_tip_constants app_restriction_enabled false"
"enable_asset_atlas_persistence 1"
"asset_atlas_background_creation 1"
"customize_max_power_temperature_control_osie 110"
"customize_max_power_temperature_control_videosr 110"
"customize_max_power_temperature_control_hbm 110"
"cpu_max_temp 110"
"fast.xml true"
"persist.perf.cores 8"
"zrn.disable_iptables true"
"GPUTUNER_SWITCH true"
"GPUTURBO_SWITCH true"
"FPSTUNER_SWITCH true"
"GPUTUNER_MODE performance"
"GPUTUNER_PERFORMANCE_MODE 1"
"GPUTUNER_PERFORMANCE_MODE_OPEN 1"
"kernel_cpu_thread_reader 1"
"animator_duration_scale 0"
"transition_animation_scale 0"
"window_animation_scale 0"
"sys_uidcpupower 1"
"pointer_speed 7"
"power_check_max_cpu_1 75"
"power_check_max_cpu_2 75"
"power_check_max_cpu_3 50"
"power_check_max_cpu_4 50"
"gpu_cache_size 256"
"touch.pressure.scale 0.001"
"windowsmgr.max_events_per_sec 180"
"fstrim_mandatory_interval 86400000"
"tcp_congestion_control cubic"
"transsion_game_mode 1"
"transsion_game_mode_refuse_call 1"
"transsion_game_mode_not_interrupt 1"
"transsion_game_picture_optimization 1"
"transsion_game_acceleration 1"
"transsion_game_changer 1"
"transsion_game_changer_type 4"
"preferred_network_mode 9,9"
"wifi_to_mobile_rat_switch 1"
"tcp_default_init_rwnd 2560"
"tcp_default_init_cwnd 60"
"location_mode 0"
"wifi_scan_interval 180"
"lte_category 4"
"background_data 1"
"wifi_sleep_policy 2"
"dual_ip_type 0"
"wifi_tcp_default_init_rwnd 2560"
"wifi_tcp_default_init_cwnd 60"
"mobile_data_always_on 1"
"network_avoid_bad_wifi 1"
"network_avoid_bad_wifi_interval 3600"
"network_avoid_bad_wifi_threshold 50"
"gprs_reconnect_alarm_period 30000"
"data_roaming_settings 0"
"data_roaming_int 0"
"wifi_watchdog_connectivity_check_interval_ms 15000"
"wifi_watchdog_active_mode 1"
"radio_bounce 1"
"radio_time_out 10"
"gprs_attach_retry_timeout 30"
"gprs_retry_period 30"
"wifi_scan_always_enabled 1"
"data_roaming 1"
"wimax_networks_transition_timeout 4"
"network_notification_rate_limit 10"
"tcp_syn_retries 2"
"wifi_aggressive_handover 1"
"background_data 1"
"wifi_suspend_optimizations_enabled 0"
"wifi_scan_background_throttle_interval_ms 0"
"package_verifier_enable 0"
"doze_enabled 1"
"game_mode_enable 1"
"ipv4_route_enable 1"
"ipv6_route_enable 1"
"wifi_fast_reconnect 1"
"wifi_watchdog_optimize_inet 1"
"wifi_watchdog_roaming 1"
"mobile_data_protocol_opt 1"
"tcp_fastopen_enabled 0"
"mobile_data_keepalive_enabled 0"
"min_refresh_rate $max_refresh_rate"
"peak_refresh_rate $max_refresh_rate"
"max_refresh_rate $max_refresh_rate"
"hotword_detection_enabled 0"
"galaxy_system_update_block"
"network_scoring_ui_enabled"
"private_dns_mode hostname"
"private_dns_specifier family.adguard-dns.com"
"private_dns_mode on"
"mobile_icc_operator_numeric0 51502"
"mobile_data_always_online1 1"
"sysui_tuner_enabled 0"
"auto_sync 0"
"auto_update 0"
"gms:play_protect_enabled 0"
)

settings_secure=(
"speed_mode 1"
"enabled_accessibility_services """
"adaptive_sleep 0"
"systemui.google.opa_enabled 0"
"high_performance_mode_enable 1"
"game_auto_temperature_control 0"
"speed_mode_enable 1"
"refresh_rate_mode 2"
"customize_power_temperature_control_hbm true"
"customize_power_temperature_control_osie true"
"allow.fast.charging 1"
"customize_power_temperature_control_videosr true"
"power_ui_enable false"
"tap_duration_enabled 1"
"tap_duration_threshold 125"
"tap_exploration_enabled 1"
"min_refresh_rate $max_refresh_rate"
"peak_refresh_rate $max_refresh_rate"
"max_refresh_rate $max_refresh_rate"
"tap_duration_threshold 0.0"
"touch_blocking_period 0.0"
)

settings_system=(
"speed_mode 1"
"sys.android.custom.fps $max_refresh_rate"
"ro.sys.lock.fps $max_refresh_rate"
"game.acceleration.hw 1"
"persist.sys.composition.type gpu"
"ro.sys.cpu.boost true"
"haptic_feedback_enable 0"
"haptic_feedback_intensity 0"
"intelligent_sleep_mode 0"
"thermal_limit_refresh_rate 1"
"vibrate_when_ringing 0"
"show_inadvertent 0"
"screen_off_timeout 1800000"
"ro.product.max_num_touch 10"
"view.scroll_friction 100"
"allow.fast.charging 1"
"sound_effects_enabled 0"
"thread_priority highest"
"asset_atlas_background_creation 1"
"cpu_max_temp 110"
"persist.perf.cores 8"
"nearby_scanning_permission_allowed 0"
"view.scroll_friction 10"
"pointer_speed 7"
"vibrate_on 0"
"multicore_packet_scheduler 1"
"game_mode 1"
"send_security_reports 0"
"rakuten_denwa 0"
"sys.use_fifo_ui 1"
"gearhead:driving_mode_settings_enabled 0"
"screen_mode_setting 0"
"touch.pressure.scale 0.001"
"windowsmgr.max_events_per_sec 180"
"MultitouchMinDistance 0px"
"MultitouchSettleInterval 0.2ms"
"TapInterval 0.3ms"
"TapSlop 0px"
"touch.size.scale 1.2"
"touch.size.bias -10.0"
"touch.size.isSummed 0"
"touch.toolSize.isSummed 0"
"touch.distance.scale 1"
"min_refresh_rate $max_refresh_rate"
"peak_refresh_rate $max_refresh_rate"
"max_refresh_rate $max_refresh_rate"
"tube_amp_effect 1"
"k2hd_effect 1"
"k3hd_effect 1"
)

setprop debug.hwui.render_dirty_regions false > /dev/null 2>&1
setprop com.qc.hardware true > /dev/null 2>&1
setprop debug.egl.hw 1 > /dev/null 2>&1
setprop debug.egl.profile 1 > /dev/null 2>&1
setprop debug.sf.hw 1 > /dev/null 2>&1
setprop debug.sf.enable_hwc_vds 1 > /dev/null 2>&1
setprop debug.sf.latch_unsignaled 1 > /dev/null 2>&1
pm trim-caches 1000G > /dev/null 2>&1
pm bg-dexopt-job > /dev/null 2>&1
service call activity 42

screencap /sdcard/Pictures/Screenshot/1feedback.png  > /dev/null 2>&1

set_tweaks() {

  for secure_app in "${secure_pkgs[@]}"; do
     pm grant "${secure_app}" android.permission.WRITE_SECURE_SETTINGS > /dev/null 2>&1
  done

# Compile Some Packages to Enhance Gaming Experience

for compile in "${settings_compiler[@]}"; do
  for package in "${packages[@]}"; do
    cmd package "${compile}" "${package}" > /dev/null 2>&1
  done
done

  
  # Debugging Tweaks That Boosted System Performance also helps gaming
  
  for debug in "${settings_debug[@]}"; do
    setprop debug.${debug} > /dev/null 2>&1
  done
  for devconfig in "${settings_devconfig[@]}"; do
    cmd device_config put ${devconfig} > /dev/null 2>&1
  done
  
  # Improve Touch Response & Speed Up System
  for system in "${settings_system[@]}"; do
    settings put system ${system} > /dev/null 2>&1
  done
  
  # Gaming Module & Internet Tweaks
  for global in "${settings_global[@]}"; do
    settings put global ${global} > /dev/null 2>&1
  done
  
  # Screen Refresh Rate Unlocker (not guaranteed to work on all devices)
  
  for secure in "${settings_secure[@]}"; do
    
    settings put secure ${secure} > /dev/null 2>&1
  done
  
  # Uninstall Unwanted Apps
  
  for bloatware in "${settings_bloatware[@]}"; do
    pm uninstall -k --user 0 "${bloatware}" > /dev/null 2>&1
  done
  
  # PREVENT SERVICE RUNNING FROM BACKGROUND
  
  for stop in "${settings_bloatware_service[@]}"; do
    dumpsys deviceidle sys-whitelist -"${stop}" > /dev/null 2>&1
    cmd appops set "${stop}" RUN_IN_BACKGROUND deny > /dev/null 2>&1
    cmd appops set "${stop}" RUN_ANY_IN_BACKGROUND deny > /dev/null 2>&1
    cmd appops set "${stop}" START_FOREGROUND deny > /dev/null 2>&1
    cmd appops set "${stop}" INSTANT_APP_START_FOREGROUND deny > /dev/null 2>&1
    pm set-app-standby-bucket "${stop}" 0 > /dev/null 2>&1
  done
  
  #Performance Mode & Disabled Thermal Throttling CPU and GPU & Clear Cache & Google Service Killer & More
  for app in $(pm package list packages | grep google | cut -f 2 -d ":"); do
cmd activity force-stop "${app}" > /dev/null 2>&1
cmd activity kill "${app}" > /dev/null 2>&1
am force-stop "${app}" > /dev/null 2>&1
am kill-all "${app}" > /dev/null 2>&1
done

  packages=$(pm list packages -3 | cut -d ":" -f 2)
opt_in_apps=""
angle_packages=""
angle_drivers=""

for package in $packages; do
    # Initialize a flag to track if the package is excluded
    excluded=false

    # Check if the package is in the exclude list
    for exclude in "${exclude_packages[@]}"; do
        if [[ "$package" == "$exclude" ]]; then
            excluded=true
            break
        fi
    done

    # If the package is not excluded, proceed with your logic
    if [[ "$excluded" == false ]]; then
        cmd activity force-stop "${package}" > /dev/null 2>&1
        cmd activity kill "${package}" > /dev/null 2>&1
        am kill-all "${package}" > /dev/null 2>&1
        am force-stop "${package}" > /dev/null 2>&1
        cmd game mode performance "${package}" > /dev/null 2>&1
        cmd device_config put game_overlay "${package}" mode=2,fps=${max_refresh_rate}:mode=3,fps=30 > /dev/null 2>&1
        cmd device_config put game_overlay "${package}" mode=2,downscaleFactor=0.9:mode=3,downscaleFactor=0.5 > /dev/null 2>&1
        
        # Append to the lists
        opt_in_apps+="${package},"
        angle_packages+="${package},"
        angle_drivers+="angle,"
        # angle : Use ANGLE. native : Use the native OpenGL ES driver. default : Use the default driver. This allows the platform to decide which driver to use. here is the source https://chromium.googlesource.com/angle/angle.git/+/HEAD/doc/DevSetupAndroid.md
    fi
done

opt_in_apps=${opt_in_apps%,}
angle_packages=${angle_packages%,}
angle_drivers=${angle_drivers%,}
settings put global game_driver_opt_in_apps "${opt_in_apps}" > /dev/null 2>&1
settings put global updatable_driver_production_opt_in_apps "${opt_in_apps}" > /dev/null 2>&1
settings put global angle_gl_driver_selection_pkgs "${angle_packages}" > /dev/null 2>&1
settings put global angle_gl_driver_selection_values "${angle_drivers}" > /dev/null 2>&1
  # cmd device_config put privacy camera_mic_icons_enabled true default > /dev/null 2>&1
  cmd device_config put privacy camera_mic_icons_enabled false default > /dev/null 2>&1
  cmd thermalservice override-status 0 > /dev/null 2>&1
  cmd power set-fixed-performance-mode-enabled true > /dev/null 2>&1
  cmd device_config put gpu_options allow_growth true > /dev/null 2>&1
  cmd device_config put gpu_options memory_fraction 0.9 > /dev/null 2>&1
  cmd device_config put gpu_options performance_tuning true > /dev/null 2>&1
  cmd stats clear-puller-cache > /dev/null 2>&1
  cmd shortcut reset-all-throttling > /dev/null 2>&1
  cmd shortcut reset-throttling > /dev/null 2>&1
}
sleep 0.5s
echo "[!] Removing Bloatwares ..."
sleep 0.5s
echo "[!] Killing Unwanted Apps ..."
sleep 0.5s
echo "[•] Compiling Speed for Pkg's ..."
sleep 0.5s
echo "[+] Applying Game Drivers ..."
sleep 0.5s
echo "[+] Applying Angle-GL Drivers ..."
sleep 0.3s
echo "[•] Clearing Apps Cache ..."
echo "[•] Optimizing System UI..."
(set_tweaks > /dev/null 2>&1 && echo "[✓] Done!") || { echo "[!] Failure!"; cmd notification post -S bigtext 'status' "Unsupported device some features may not work properly please contact the owner of this script!" > /dev/null 2>&1; sleep 4s; am start -a android.intent.action.VIEW -d "$facebook" > /dev/null 2>&1; exit 1; }
sleep 1s
echo "[✓] Performance Mode!"
sleep 1s
echo "[✓] Successfully Flash Rootless Module!"
echo "[!] Do not reboot if it works properly only do it when application crashes!"
echo ""
screencap /sdcard/Pictures/Screenshot/2feedback.png  > /dev/null 2>&1
cmd notification post -S bigtext 'status' "Rootless Module is Active Do not Reboot! 🎮" > /dev/null 2>&1
cmd notification post -S bigtext 'support' "Screen Refresh Rate: $max_refresh_rate hz 🔥" > /dev/null 2>&1
sleep 2s
am start -n com.draco.purr/com.draco.purr.views.PermissionActivity > /dev/null 2>&1
# am start -a com.android.webview.SHOW_DEV_UI > /dev/null 2>&1
# sleep 10s
# am start -a android.intent.action.VIEW -d "https://t.me/hackersdecipher" > /dev/null 2>&1
