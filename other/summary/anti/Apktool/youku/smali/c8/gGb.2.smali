.class public Lc8/gGb;
.super Ljava/lang/Object;


# instance fields
.field public errCode:Ljava/lang/String;

.field public errMsg:Ljava/lang/String;

.field public linkCode:Ljava/lang/String;

.field public modelCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/gGb;->modelCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/gGb;->linkCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/gGb;->errCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/gGb;->errMsg:Ljava/lang/String;

    iput-object p1, p0, Lc8/gGb;->modelCode:Ljava/lang/String;

    iput-object p2, p0, Lc8/gGb;->linkCode:Ljava/lang/String;

    iput-object p3, p0, Lc8/gGb;->errCode:Ljava/lang/String;

    iput-object p4, p0, Lc8/gGb;->errMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/gGb;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCodeString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/gGb;->modelCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/gGb;->linkCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/gGb;->errCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
