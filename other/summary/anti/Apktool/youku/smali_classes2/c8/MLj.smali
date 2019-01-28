.class public Lc8/MLj;
.super Ljava/lang/Object;
.source "YoukuActivityLifecycleCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/NLj;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/NLj;


# direct methods
.method constructor <init>(Lc8/NLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/NLj;

    .prologue
    .line 129
    iput-object p1, p0, Lc8/MLj;->this$0:Lc8/NLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 132
    invoke-static {}, Lc8/vZm;->upload()V

    .line 133
    return-void
.end method
