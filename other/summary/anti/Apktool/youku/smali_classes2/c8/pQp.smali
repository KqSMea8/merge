.class public Lc8/pQp;
.super Ljava/lang/Object;
.source "XState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qQp;->afterAsyncBind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qQp;


# direct methods
.method constructor <init>(Lc8/qQp;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lc8/pQp;->this$0:Lc8/qQp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Lc8/rQp;->syncToRemote()V

    .line 67
    return-void
.end method
