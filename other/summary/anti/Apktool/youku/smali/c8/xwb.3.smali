.class public Lc8/xwb;
.super Ljava/lang/Object;
.source "PackageCache.java"

# interfaces
.implements Lc8/Vxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Awb;->tryToPutZCachePackageIntoMemroyCache(Z)V
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
    .line 315
    iput-object p1, p0, Lc8/xwb;->this$0:Lc8/Awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 318
    const-string/jumbo v0, "Page_Cache"

    const-string/jumbo v1, "get gwxcache package app canceled"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method
