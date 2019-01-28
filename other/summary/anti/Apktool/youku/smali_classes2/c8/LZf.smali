.class public Lc8/LZf;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QZf;->doTransitionAnimation()V
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
    .line 269
    iput-object p1, p0, Lc8/LZf;->this$0:Lc8/QZf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lc8/LZf;->this$0:Lc8/QZf;

    invoke-static {v0}, Lc8/QZf;->access$500(Lc8/QZf;)V

    .line 273
    return-void
.end method
