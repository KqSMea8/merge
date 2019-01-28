.class public Lc8/rjg;
.super Lc8/Cig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# instance fields
.field public country:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public message:Lc8/Gjg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/Cig;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lc8/Cig;-><init>()V

    invoke-virtual {p0, p1}, Lc8/rjg;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 1

    iget-object v0, p0, Lc8/rjg;->message:Lc8/Gjg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/rjg;->message:Lc8/Gjg;

    invoke-virtual {v0}, Lc8/Gjg;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lc8/Cig;->fromBundle(Landroid/os/Bundle;)V

    const-string/jumbo v0, "_wxapi_showmessage_req_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/rjg;->lang:Ljava/lang/String;

    const-string/jumbo v0, "_wxapi_showmessage_req_country"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/rjg;->country:Ljava/lang/String;

    invoke-static {p1}, Lc8/Ejg;->fromBundle(Landroid/os/Bundle;)Lc8/Gjg;

    move-result-object v0

    iput-object v0, p0, Lc8/rjg;->message:Lc8/Gjg;

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lc8/rjg;->message:Lc8/Gjg;

    invoke-static {v0}, Lc8/Ejg;->toBundle(Lc8/Gjg;)Landroid/os/Bundle;

    move-result-object v0

    invoke-super {p0, v0}, Lc8/Cig;->toBundle(Landroid/os/Bundle;)V

    const-string/jumbo v1, "_wxapi_showmessage_req_lang"

    iget-object v2, p0, Lc8/rjg;->lang:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "_wxapi_showmessage_req_country"

    iget-object v2, p0, Lc8/rjg;->country:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method
