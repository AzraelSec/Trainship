.class final Lcom/google/android/gms/internal/measurement/zzex;
.super Lcom/google/android/gms/internal/measurement/zzep$zzb;


# instance fields
.field private final synthetic zzaek:Lcom/google/android/gms/internal/measurement/zzep;

.field private final synthetic zzaeu:Lcom/google/android/gms/measurement/internal/zzcv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;Lcom/google/android/gms/measurement/internal/zzcv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzex;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzex;->zzaeu:Lcom/google/android/gms/measurement/internal/zzcv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzep$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    return-void
.end method


# virtual methods
.method final zzgd()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzex;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzep;->zzb(Lcom/google/android/gms/internal/measurement/zzep;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzep$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzex;->zzaeu:Lcom/google/android/gms/measurement/internal/zzcv;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzep$zzc;-><init>(Lcom/google/android/gms/measurement/internal/zzcv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzec;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzei;)V

    return-void
.end method
