.class public Lc8/JZf;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QZf;->startTransition(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QZf;


# direct methods
.method constructor <init>(Lc8/QZf;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lc8/JZf;->this$0:Lc8/QZf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lc8/JZf;->this$0:Lc8/QZf;

    invoke-static {v0}, Lc8/QZf;->access$000(Lc8/QZf;)V

    .line 208
    iget-object v0, p0, Lc8/JZf;->this$0:Lc8/QZf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/QZf;->access$102(Lc8/QZf;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 209
    return-void
.end method
