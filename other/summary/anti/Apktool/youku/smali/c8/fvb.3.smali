.class public Lc8/fvb;
.super Ljava/lang/Object;
.source "WXPrefetchModule.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jvb;->createPrefetchManagerIfNeeded()Lc8/bvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jvb;


# direct methods
.method constructor <init>(Lc8/jvb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jvb;

    .prologue
    .line 132
    iput-object p1, p0, Lc8/fvb;->this$0:Lc8/jvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 135
    new-instance v0, Lc8/evb;

    const-string/jumbo v1, "WXPrefetchModule"

    invoke-direct {v0, p0, v1, p1}, Lc8/evb;-><init>(Lc8/fvb;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lc8/Vcf;->postTask(Lc8/Tcf;)V

    .line 143
    return-void
.end method
