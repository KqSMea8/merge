.class public abstract Lc8/aVf;
.super Lc8/BXf;
.source "WXSDKEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bVf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DestroyableModuleFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/ZUf;",
        ">",
        "Lc8/BXf",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lc8/aVf;, "Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory<TT;>;"
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lc8/BXf;-><init>(Ljava/lang/Class;)V

    .line 440
    return-void
.end method
