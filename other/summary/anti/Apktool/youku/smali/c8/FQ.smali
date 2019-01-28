.class public Lc8/FQ;
.super Ljava/lang/Object;
.source "Countly.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IQ;->initDeviceInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IQ;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/IQ;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lc8/FQ;->this$0:Lc8/IQ;

    iput-object p2, p0, Lc8/FQ;->val$context:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc8/FQ;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lc8/aR;->fulfillTrackingInfo(Landroid/content/Context;)Ljava/util/Map;

    .line 74
    return-void
.end method
