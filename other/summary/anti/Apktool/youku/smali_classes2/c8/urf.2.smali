.class public Lc8/urf;
.super Ljava/lang/Object;
.source "ANetBridge.java"

# interfaces
.implements Lc8/iM;
.implements Lc8/kM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkListener"
.end annotation


# instance fields
.field private outStream:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lc8/vrf;


# direct methods
.method private constructor <init>(Lc8/vrf;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lc8/urf;->this$0:Lc8/vrf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lc8/urf;->outStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lc8/vrf;Lc8/trf;)V
    .locals 0
    .param p1, "x0"    # Lc8/vrf;
    .param p2, "x1"    # Lc8/trf;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lc8/urf;-><init>(Lc8/vrf;)V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lc8/oM;Ljava/lang/Object;)V
    .locals 4
    .param p1, "progressEvent"    # Lc8/oM;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v0, p0, Lc8/urf;->outStream:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p1}, Lc8/oM;->getBytedata()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1}, Lc8/oM;->getSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 84
    return-void
.end method

.method public onFinished(Lc8/nM;Ljava/lang/Object;)V
    .locals 5
    .param p1, "finishEvent"    # Lc8/nM;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 62
    iget-object v3, p0, Lc8/urf;->this$0:Lc8/vrf;

    invoke-static {v3}, Lc8/vrf;->access$000(Lc8/vrf;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 63
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v3

    if-lez v3, :cond_0

    .line 66
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 67
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lc8/urf;->outStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 68
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "content"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "status_code"

    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string/jumbo v3, "status"

    invoke-interface {p1}, Lc8/nM;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 78
    iget-object v3, p0, Lc8/urf;->this$0:Lc8/vrf;

    invoke-static {v3}, Lc8/vrf;->access$000(Lc8/vrf;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    return-void

    .line 70
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    iput v3, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v3

    const-string/jumbo v3, "ANetBridge"

    const-string/jumbo v4, "ByteArray -> String Error"

    invoke-static {v3, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
