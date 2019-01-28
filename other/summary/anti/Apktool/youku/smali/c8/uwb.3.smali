.class public Lc8/uwb;
.super Ljava/lang/Object;
.source "PackageCache.java"

# interfaces
.implements Lc8/pH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Awb;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Awb;


# direct methods
.method constructor <init>(Lc8/Awb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Awb;

    .prologue
    .line 111
    iput-object p1, p0, Lc8/uwb;->this$0:Lc8/Awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 3
    .param p1, "i"    # I
    .param p2, "wvEventContext"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 114
    const/16 v1, 0x1778

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 115
    const/4 v1, 0x0

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "appName":Ljava/lang/String;
    const-string/jumbo v1, "gwxcache"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lc8/uwb;->this$0:Lc8/Awb;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc8/Awb;->tryToPutZCachePackageIntoMemroyCache(Z)V

    .line 120
    .end local v0    # "appName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
