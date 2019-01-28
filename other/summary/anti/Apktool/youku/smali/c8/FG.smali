.class public Lc8/FG;
.super Ljava/lang/Object;
.source "WVPackageAppCleanup.java"

# interfaces
.implements Lc8/pH;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/GG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVPageEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 2
    .param p1, "id"    # I
    .param p2, "ctx"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 666
    sparse-switch p1, :sswitch_data_0

    .line 683
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 669
    :sswitch_0
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v0

    invoke-virtual {v0}, Lc8/GG;->saveInfoSnippetToDiskInner()V

    .line 670
    const-string/jumbo v0, "WVPackageAppCleanup"

    const-string/jumbo v1, "onEvent  PAGE_destroy"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :sswitch_1
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v0

    invoke-virtual {v0}, Lc8/GG;->saveInfoSnippetToDisk()V

    .line 677
    const-string/jumbo v0, "WVPackageAppCleanup"

    const-string/jumbo v1, "onEvent  PACKAGE_UPLOAD_COMPLETE"

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    nop

    :sswitch_data_0
    .sparse-switch
        0xbbb -> :sswitch_0
        0x1771 -> :sswitch_1
    .end sparse-switch
.end method
