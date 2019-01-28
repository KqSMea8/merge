.class public Lc8/ywb;
.super Ljava/lang/Object;
.source "PackageCache.java"

# interfaces
.implements Lc8/Hxb;


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
        "Ljava/lang/Object;",
        "Lc8/Hxb",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Awb;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lc8/Awb;J)V
    .locals 0
    .param p1, "this$0"    # Lc8/Awb;

    .prologue
    .line 307
    iput-object p1, p0, Lc8/ywb;->this$0:Lc8/Awb;

    iput-wide p2, p0, Lc8/ywb;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 307
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/ywb;->call(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/ywb;->val$startTime:J

    sub-long v0, v2, v4

    .line 311
    .local v0, "getPackageAppTime":J
    const-string/jumbo v2, "Page_Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get gwxcache package app time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v2, 0x0

    return-object v2
.end method
