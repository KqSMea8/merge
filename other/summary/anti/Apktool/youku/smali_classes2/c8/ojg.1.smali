.class public Lc8/ojg;
.super Lc8/Cig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field private static final FAV_CONTENT_LENGTH_LIMIT:I = 0x1900000

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.SendMessageToWX.Req"

.field public static final WXSceneFavorite:I = 0x2

.field public static final WXSceneSession:I = 0x0

.field public static final WXSceneTimeline:I = 0x1


# instance fields
.field public message:Lc8/Gjg;

.field public scene:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/Cig;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lc8/Cig;-><init>()V

    invoke-virtual {p0, p1}, Lc8/ojg;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    iget-object v0, p0, Lc8/ojg;->message:Lc8/Gjg;

    if-nez v0, :cond_0

    const-string/jumbo v0, "MicroMsg.SDK.SendMessageToWX.Req"

    const-string/jumbo v1, "checkArgs fail ,message is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/ojg;->message:Lc8/Gjg;

    iget-object v0, v0, Lc8/Gjg;->mediaObject:Lc8/Fjg;

    invoke-interface {v0}, Lc8/Fjg;->type()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget v0, p0, Lc8/ojg;->scene:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lc8/ojg;->message:Lc8/Gjg;

    iget-object v0, v0, Lc8/Gjg;->mediaObject:Lc8/Fjg;

    check-cast v0, Lc8/Bjg;

    const/high16 v1, 0x1900000

    invoke-virtual {v0, v1}, Lc8/Bjg;->setContentLengthLimit(I)V

    :cond_1
    iget-object v0, p0, Lc8/ojg;->message:Lc8/Gjg;

    invoke-virtual {v0}, Lc8/Gjg;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lc8/Cig;->fromBundle(Landroid/os/Bundle;)V

    invoke-static {p1}, Lc8/Ejg;->fromBundle(Landroid/os/Bundle;)Lc8/Gjg;

    move-result-object v0

    iput-object v0, p0, Lc8/ojg;->message:Lc8/Gjg;

    const-string/jumbo v0, "_wxapi_sendmessagetowx_req_scene"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc8/ojg;->scene:I

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lc8/Cig;->toBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lc8/ojg;->message:Lc8/Gjg;

    invoke-static {v0}, Lc8/Ejg;->toBundle(Lc8/Gjg;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string/jumbo v0, "_wxapi_sendmessagetowx_req_scene"

    iget v1, p0, Lc8/ojg;->scene:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
