.class final Lcom/google/android/gms/internal/ads/zzanv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzn;


# instance fields
.field private final synthetic zzdoy:Lcom/google/android/gms/internal/ads/zzanu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanv;->zzdoy:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbd;->zzdn(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbd;->zzdn(Ljava/lang/String;)V

    return-void
.end method

.method public final zziv()V
    .locals 2

    const-string v0, "AdMobCustomTabsAdapter overlay is closed."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbd;->zzdn(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanv;->zzdoy:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanu;->zza(Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanv;->zzdoy:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final zziw()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbd;->zzdn(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanv;->zzdoy:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanu;->zza(Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanv;->zzdoy:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
