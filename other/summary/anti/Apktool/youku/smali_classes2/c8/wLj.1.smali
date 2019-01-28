.class public Lc8/wLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 354
    iput-object p1, p0, Lc8/wLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Lc8/oYm;

    invoke-direct {v0}, Lc8/oYm;-><init>()V

    iget-object v1, p0, Lc8/wLj;->this$0:Lc8/KLj;

    invoke-virtual {v0, v1}, Lc8/oYm;->setup(Landroid/app/Application;)V

    .line 359
    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v0

    sput-boolean v0, Lc8/Dfh;->isVipUserTemp:Z

    .line 360
    return-void
.end method
