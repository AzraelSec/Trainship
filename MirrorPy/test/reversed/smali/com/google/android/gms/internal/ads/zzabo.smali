.class final Lcom/google/android/gms/internal/ads/zzabo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzu<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdan:Lcom/google/android/gms/internal/ads/zzabn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzabn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->zzdan:Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->zzdan:Lcom/google/android/gms/internal/ads/zzabn;

    const-string v0, "timestamp"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzabn;->zzdal:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to call parse unconfirmedClickTimestamp."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxz;->e(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->zzdan:Lcom/google/android/gms/internal/ads/zzabn;

    const-string v0, "id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzabn;->zzdak:Ljava/lang/String;

    const-string p1, "asset_id"

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabo;->zzdan:Lcom/google/android/gms/internal/ads/zzabn;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzabn;->zza(Lcom/google/android/gms/internal/ads/zzabn;)Lcom/google/android/gms/internal/ads/zzaet;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "Received unconfirmed click but UnconfirmedClickListener is null."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzdn(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabo;->zzdan:Lcom/google/android/gms/internal/ads/zzabn;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzabn;->zza(Lcom/google/android/gms/internal/ads/zzabn;)Lcom/google/android/gms/internal/ads/zzaet;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzaet;->onUnconfirmedClickReceived(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
