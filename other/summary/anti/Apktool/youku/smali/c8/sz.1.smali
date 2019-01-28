.class public Lc8/sz;
.super Ljava/lang/Object;
.source "InstrumentationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/atlas/runtime/InstrumentationHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExecStartActivityCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execStartActivity()Landroid/app/Instrumentation$ActivityResult;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .locals 1
    .param p1, "wrapperIntent"    # Landroid/content/Intent;

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method
