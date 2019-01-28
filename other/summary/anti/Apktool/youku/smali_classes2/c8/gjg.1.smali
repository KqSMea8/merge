.class public Lc8/gjg;
.super Lc8/Eig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.GetMessageFromWX.Resp"


# instance fields
.field public message:Lc8/Gjg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/Eig;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lc8/Eig;-><init>()V

    invoke-virtual {p0, p1}, Lc8/gjg;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    iget-object v0, p0, Lc8/gjg;->message:Lc8/Gjg;

    if-nez v0, :cond_0

    const-string/jumbo v0, "MicroMsg.SDK.GetMessageFromWX.Resp"

    const-string/jumbo v1, "checkArgs fail, message is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/gjg;->message:Lc8/Gjg;

    invoke-virtual {v0}, Lc8/Gjg;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lc8/Eig;->fromBundle(Landroid/os/Bundle;)V

    invoke-static {p1}, Lc8/Ejg;->fromBundle(Landroid/os/Bundle;)Lc8/Gjg;

    move-result-object v0

    iput-object v0, p0, Lc8/gjg;->message:Lc8/Gjg;

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lc8/Eig;->toBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lc8/gjg;->message:Lc8/Gjg;

    invoke-static {v0}, Lc8/Ejg;->toBundle(Lc8/Gjg;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method
