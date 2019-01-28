.class public Lc8/DYf;
.super Ljava/lang/Object;
.source "WXDomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EYf;->removeDomStatement(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/EYf;

.field final synthetic val$statement:Lc8/oYf;


# direct methods
.method constructor <init>(Lc8/EYf;Lc8/oYf;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lc8/DYf;->this$0:Lc8/EYf;

    iput-object p2, p0, Lc8/DYf;->val$statement:Lc8/oYf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lc8/DYf;->val$statement:Lc8/oYf;

    invoke-virtual {v0}, Lc8/oYf;->destroy()V

    .line 99
    return-void
.end method
