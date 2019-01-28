.class public Lc8/ncb;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lc8/scb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tcb;->resumeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tcb;


# direct methods
.method constructor <init>(Lc8/tcb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tcb;

    .prologue
    .line 373
    iput-object p1, p0, Lc8/ncb;->this$0:Lc8/tcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lc8/kcb;)V
    .locals 1
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 375
    iget-object v0, p0, Lc8/ncb;->this$0:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->resumeAnimation()V

    .line 376
    return-void
.end method
