.class final Lcom/google/android/gms/ads/internal/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbmi:Lcom/google/android/gms/ads/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzbmi:Lcom/google/android/gms/ads/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzbmi:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzk;->zzbmf:Lcom/google/android/gms/ads/internal/zzh;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzaxf;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzbmi:Lcom/google/android/gms/ads/internal/zzk;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzk;->zzblz:Lcom/google/android/gms/internal/ads/zzaxg;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzaxf;-><init>(Lcom/google/android/gms/internal/ads/zzaxg;Lcom/google/android/gms/internal/ads/zzbgg;Lcom/google/android/gms/internal/ads/zzakq;Lcom/google/android/gms/internal/ads/zzalj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzakt;Lcom/google/android/gms/internal/ads/zzacf;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/ads/zzaxf;)V

    return-void
.end method
