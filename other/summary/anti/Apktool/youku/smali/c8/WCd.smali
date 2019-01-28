.class public final Lc8/WCd;
.super Landroid/os/Handler;
.source "GeoFenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/XCd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lc8/XCd;


# direct methods
.method public constructor <init>(Lc8/XCd;)V
    .locals 0

    iput-object p1, p0, Lc8/WCd;->a:Lc8/XCd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc8/XCd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc8/WCd;->a:Lc8/XCd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lc8/WCd;->a:Lc8/XCd;

    invoke-virtual {v1, v0}, Lc8/XCd;->g(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    :try_start_0
    const-string/jumbo v1, "geoFence"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/GeoFence;

    iget-object v1, p0, Lc8/WCd;->a:Lc8/XCd;

    invoke-virtual {v1, v0}, Lc8/XCd;->a(Lcom/amap/api/fence/GeoFence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_1
    const-string/jumbo v1, "location_errorcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lc8/WCd;->a:Lc8/XCd;

    invoke-virtual {v1, v0}, Lc8/XCd;->b(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
