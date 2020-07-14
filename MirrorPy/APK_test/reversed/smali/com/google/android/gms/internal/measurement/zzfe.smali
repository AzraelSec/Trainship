.class final Lcom/google/android/gms/internal/measurement/zzfe;
.super Lcom/google/android/gms/internal/measurement/zzep$zzb;


# instance fields
.field private final synthetic zzaek:Lcom/google/android/gms/internal/measurement/zzep;

.field private final synthetic zzaew:I

.field private final synthetic zzaex:Ljava/lang/String;

.field private final synthetic zzaey:Ljava/lang/Object;

.field private final synthetic zzaez:Ljava/lang/Object;

.field private final synthetic zzafa:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzep;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    const/4 p2, 0x5

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaew:I

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaex:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaey:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaez:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzafa:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzep$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzep;Z)V

    return-void
.end method


# virtual methods
.method final zzgd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaek:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzep;->zzb(Lcom/google/android/gms/internal/measurement/zzep;)Lcom/google/android/gms/internal/measurement/zzec;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaew:I

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaex:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaey:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzaez:Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfe;->zzafa:Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 6
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzec;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method
