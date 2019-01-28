.class public Lc8/fOf;
.super Ljava/lang/Object;
.source "JSLogBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gOf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogBody"
.end annotation


# instance fields
.field data:Ljava/lang/String;

.field module:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lc8/gOf;


# direct methods
.method constructor <init>(Lc8/gOf;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lc8/fOf;->this$0:Lc8/gOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
