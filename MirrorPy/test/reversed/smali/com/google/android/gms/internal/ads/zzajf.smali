.class final Lcom/google/android/gms/internal/ads/zzajf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbco;


# instance fields
.field private final synthetic zzdjj:Lcom/google/android/gms/internal/ads/zzait;

.field private final synthetic zzdjm:Lcom/google/android/gms/internal/ads/zzajm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzait;Lcom/google/android/gms/internal/ads/zzajm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzdjj:Lcom/google/android/gms/internal/ads/zzait;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzdjm:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzdjj:Lcom/google/android/gms/internal/ads/zzait;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzait;->zza(Lcom/google/android/gms/internal/ads/zzait;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzdjj:Lcom/google/android/gms/internal/ads/zzait;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzait;->zza(Lcom/google/android/gms/internal/ads/zzait;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxz;->v(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzdjm:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzajm;->zzuf()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
