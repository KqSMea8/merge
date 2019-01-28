.class public Lc8/ff;
.super Ljava/lang/Object;
.source "ValueAnimatorCompatImplGingerbread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gf;


# direct methods
.method constructor <init>(Lc8/gf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/gf;

    .prologue
    .line 49
    iput-object p1, p0, Lc8/ff;->this$0:Lc8/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/ff;->this$0:Lc8/gf;

    invoke-virtual {v0}, Lc8/gf;->update()V

    .line 52
    return-void
.end method
