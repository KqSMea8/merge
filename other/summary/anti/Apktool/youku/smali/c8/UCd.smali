.class public final Lc8/UCd;
.super Landroid/os/Handler;
.source "GeoFenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/XCd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/XCd;


# direct methods
.method public constructor <init>(Lc8/XCd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XCd;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XCd;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XCd;->e(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XCd;->d(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XCd;->f(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    iget-object v1, p0, Lc8/UCd;->a:Lc8/XCd;

    iget-object v1, v1, Lc8/XCd;->q:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0, v1}, Lc8/XCd;->a(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {v0}, Lc8/XCd;->c()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {v0}, Lc8/XCd;->b()V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XCd;->h(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XCd;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lc8/UCd;->a:Lc8/XCd;

    invoke-virtual {v0}, Lc8/XCd;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
