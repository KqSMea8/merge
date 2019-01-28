.class public Lc8/yib;
.super Ljava/lang/Object;
.source "AbsLoginByCodeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Aib;->asyncExecute([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Aib;


# direct methods
.method constructor <init>(Lc8/Aib;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Aib;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/yib;->this$0:Lc8/Aib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lc8/yib;->this$0:Lc8/Aib;

    invoke-virtual {v0}, Lc8/Aib;->doWhenResultOk()V

    .line 46
    return-void
.end method
