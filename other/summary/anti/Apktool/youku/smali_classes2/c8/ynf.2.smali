.class public Lc8/ynf;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/znf;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/znf;


# direct methods
.method constructor <init>(Lc8/znf;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lc8/ynf;->this$0:Lc8/znf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v0

    iget-object v0, v0, Lc8/Mnf;->installInfo:Lc8/Anf;

    invoke-virtual {v0}, Lc8/Anf;->sendIfNecessary()V

    .line 64
    return-void
.end method
