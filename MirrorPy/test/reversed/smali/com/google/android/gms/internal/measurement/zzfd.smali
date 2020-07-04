.class final Lcom/google/android/gms/internal/measurement/zzfd;
.super Lcom/google/android/gms/internal/measurement/zzep$zzb;


# instance fields
.field private final synthetic zzaeh:Ljava/lang/String;

.field private final synthetic zzaek:Lcom/google/android/gms/internal/measurement/zzep;

.field private final synthetic zzaeo:Ljava/lang/String;

.field private final synthetic zzaep:Lcom/google/android/gms/internal/measurement/zzep$zza;

.field private final synthetic zzaev:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzep$zza;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaeh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaeo:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaev:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaep:Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzep$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzep;)V

    return-void
.end method


# virtual methods
.method final zzgd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzep;->zzb(Lcom/google/android/gms/internal/measurement/zzep;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaeh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaeo:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaev:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaep:Lcom/google/android/gms/internal/measurement/zzep$zza;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzec;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzef;)V

    return-void
.end method

.method protected final zzge()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfd;->zzaep:Lcom/google/android/gms/internal/measurement/zzep$zza;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzep$zza;->zzb(Landroid/os/Bundle;)V

    return-void
.end method
