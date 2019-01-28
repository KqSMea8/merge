.class public Lcom/taobao/orange/ConfigCenter$1$1;
.super Ljava/util/HashSet;
.source "ConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Csf;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lc8/Gtf;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lc8/Csf;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Csf;)V
    .locals 1
    .param p1, "this$1"    # Lc8/Csf;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 137
    iput-object p1, p0, Lcom/taobao/orange/ConfigCenter$1$1;->this$1:Lc8/Csf;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 139
    new-instance v0, Lc8/Bsf;

    invoke-direct {v0, p0}, Lc8/Bsf;-><init>(Lcom/taobao/orange/ConfigCenter$1$1;)V

    invoke-virtual {p0, v0}, Lcom/taobao/orange/ConfigCenter$1$1;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method
