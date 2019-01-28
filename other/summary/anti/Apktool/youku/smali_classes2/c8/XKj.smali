.class public Lc8/XKj;
.super Ljava/lang/Object;
.source "StepService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/pedometer/service/StepService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/pedometer/service/StepService;


# direct methods
.method public constructor <init>(Lcom/youku/pedometer/service/StepService;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lc8/XKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/XKj;->this$0:Lcom/youku/pedometer/service/StepService;

    invoke-static {v0}, Lcom/youku/pedometer/service/StepService;->access$000(Lcom/youku/pedometer/service/StepService;)V

    .line 64
    return-void
.end method
