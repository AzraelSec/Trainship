.class public final Lcom/google/android/gms/internal/ads/zzaog;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzark;
.end annotation


# instance fields
.field private final zzdpy:Z

.field private final zzdpz:Z

.field private final zzdqa:Z

.field private final zzdqb:Z

.field private final zzdqc:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaoi;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaoi;->zza(Lcom/google/android/gms/internal/ads/zzaoi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdpy:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaoi;->zzb(Lcom/google/android/gms/internal/ads/zzaoi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdpz:Z

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaoi;->zzc(Lcom/google/android/gms/internal/ads/zzaoi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdqa:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaoi;->zzd(Lcom/google/android/gms/internal/ads/zzaoi;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdqb:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaoi;->zze(Lcom/google/android/gms/internal/ads/zzaoi;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdqc:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaoi;Lcom/google/android/gms/internal/ads/zzaoh;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaog;-><init>(Lcom/google/android/gms/internal/ads/zzaoi;)V

    return-void
.end method


# virtual methods
.method public final zzvn()Lorg/json/JSONObject;
    .locals 3

    .line 8
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdpy:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdpz:Z

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdqa:Z

    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdqb:Z

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzdqc:Z

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxz;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
