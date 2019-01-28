.class public Lc8/UXo;
.super Ljava/lang/Object;
.source "SecurityUtil.java"

# interfaces
.implements Lc8/Vcc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/VXo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifyCallback"
.end annotation


# instance fields
.field callback:Lc8/NXo;


# direct methods
.method public constructor <init>(Lc8/NXo;)V
    .locals 0
    .param p1, "callback1"    # Lc8/NXo;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lc8/UXo;->callback:Lc8/NXo;

    .line 63
    return-void
.end method


# virtual methods
.method public onNotifyBackPressed()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onResult(ILjava/util/Map;)V
    .locals 2
    .param p1, "retInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " map = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    if-eqz p2, :cond_0

    .line 73
    const-string/jumbo v0, "retInt"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lc8/UXo;->callback:Lc8/NXo;

    invoke-interface {v0, p2}, Lc8/NXo;->onSucess(Ljava/util/Map;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lc8/UXo;->callback:Lc8/NXo;

    invoke-interface {v0, p2}, Lc8/NXo;->onFail(Ljava/util/Map;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
