.class final Lcom/google/android/gms/internal/ads/zzaip;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdir:Ljava/lang/String;

.field private final synthetic zzdis:Lcom/google/android/gms/internal/ads/zzaik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaik;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzdis:Lcom/google/android/gms/internal/ads/zzaik;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzdir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzdis:Lcom/google/android/gms/internal/ads/zzaik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaik;->zza(Lcom/google/android/gms/internal/ads/zzaik;)Lcom/google/android/gms/internal/ads/zzbgg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzdir:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbgg;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
