.class public Lc8/owb;
.super Lc8/Rxb;
.source "PackageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Awb;->tryToPutZCachePackageIntoMemroyCache(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Rxb",
        "<",
        "Lc8/SG;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Awb;


# direct methods
.method constructor <init>(Lc8/Awb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Awb;

    .prologue
    .line 276
    iput-object p1, p0, Lc8/owb;->this$0:Lc8/Awb;

    invoke-direct {p0}, Lc8/Rxb;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancel(Lc8/SG;)Z
    .locals 1
    .param p1, "appResConfig"    # Lc8/SG;

    .prologue
    .line 279
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic cancel(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 276
    check-cast p1, Lc8/SG;

    invoke-virtual {p0, p1}, Lc8/owb;->cancel(Lc8/SG;)Z

    move-result v0

    return v0
.end method
