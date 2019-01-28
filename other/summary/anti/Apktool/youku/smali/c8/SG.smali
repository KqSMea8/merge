.class public Lc8/SG;
.super Ljava/lang/Object;
.source "AppResConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/RG;
    }
.end annotation


# instance fields
.field public mAppinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

.field public mResfileMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lc8/RG;",
            ">;"
        }
    .end annotation
.end field

.field public tk:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    .line 41
    return-void
.end method


# virtual methods
.method public getAppInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/SG;->mAppinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    return-object v0
.end method

.method public getResfileInfo(Ljava/lang/String;)Lc8/RG;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lc8/SG;->mResfileMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/RG;

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V
    .locals 0
    .param p1, "appinfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/SG;->mAppinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 35
    return-void
.end method
