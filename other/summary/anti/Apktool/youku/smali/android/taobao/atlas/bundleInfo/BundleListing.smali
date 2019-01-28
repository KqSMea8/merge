.class public Landroid/taobao/atlas/bundleInfo/BundleListing;
.super Ljava/lang/Object;
.source "BundleListing.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Yx;
    }
.end annotation


# instance fields
.field public bundles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Yx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/atlas/bundleInfo/BundleListing;->bundles:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public getBundles()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Yx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Landroid/taobao/atlas/bundleInfo/BundleListing;->bundles:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public setBundles(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Yx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "bundles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/taobao/atlas/bundleInfo/BundleListing$BundleInfo;>;"
    iput-object p1, p0, Landroid/taobao/atlas/bundleInfo/BundleListing;->bundles:Ljava/util/LinkedHashMap;

    .line 231
    return-void
.end method
