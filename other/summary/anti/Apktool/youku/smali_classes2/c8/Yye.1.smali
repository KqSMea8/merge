.class public Lc8/Yye;
.super Ljava/lang/Object;
.source "LoadingBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zye;


# direct methods
.method constructor <init>(Lc8/Zye;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zye;

    .prologue
    .line 60
    iput-object p1, p0, Lc8/Yye;->this$0:Lc8/Zye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lc8/Yye;->this$0:Lc8/Zye;

    invoke-static {v0}, Lc8/Zye;->access$008(Lc8/Zye;)I

    .line 65
    iget-object v0, p0, Lc8/Yye;->this$0:Lc8/Zye;

    iget-object v1, p0, Lc8/Yye;->this$0:Lc8/Zye;

    invoke-static {v1}, Lc8/Zye;->access$000(Lc8/Zye;)I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/Zye;->drawProgress(I)V

    .line 66
    return-void
.end method
