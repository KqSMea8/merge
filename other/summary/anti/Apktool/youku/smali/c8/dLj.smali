.class public Lc8/dLj;
.super Ljava/lang/Object;
.source "ActivityWelcome.java"

# interfaces
.implements Lc8/Ybn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/ActivityWelcome;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/ActivityWelcome;


# direct methods
.method public constructor <init>(Lcom/youku/phone/ActivityWelcome;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/phone/ActivityWelcome;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 98
    iput-object p1, p0, Lc8/dLj;->this$0:Lcom/youku/phone/ActivityWelcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lc8/dLj;->this$0:Lcom/youku/phone/ActivityWelcome;

    iget-object v1, p0, Lc8/dLj;->this$0:Lcom/youku/phone/ActivityWelcome;

    invoke-virtual {v1}, Lcom/youku/phone/ActivityWelcome;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/phone/ActivityWelcome;->access$000(Lcom/youku/phone/ActivityWelcome;Landroid/content/Context;)V

    .line 102
    return-void
.end method
