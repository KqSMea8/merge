.class public Lc8/EGd;
.super Ljava/lang/Object;
.source "DefaultLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HGd;->startDelayTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HGd;


# direct methods
.method constructor <init>(Lc8/HGd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/HGd;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/EGd;->this$0:Lc8/HGd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lc8/EGd;->this$0:Lc8/HGd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/HGd;->flush(Z)V

    .line 46
    return-void
.end method
