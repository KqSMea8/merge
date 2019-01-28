.class public Lc8/Uxb;
.super Ljava/lang/Object;
.source "WorkFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zxb;->flowToFinal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zxb;


# direct methods
.method constructor <init>(Lc8/Zxb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zxb;

    .prologue
    .line 180
    iput-object p1, p0, Lc8/Uxb;->this$0:Lc8/Zxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lc8/Uxb;->this$0:Lc8/Zxb;

    invoke-static {v0}, Lc8/Zxb;->access$300(Lc8/Zxb;)V

    .line 184
    return-void
.end method
