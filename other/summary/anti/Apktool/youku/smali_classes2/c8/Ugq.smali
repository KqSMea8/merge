.class public Lc8/Ugq;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lc8/phq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vgq;->defaultLog()Lc8/phq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Vgq;


# direct methods
.method constructor <init>(Lc8/Vgq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Vgq;

    .prologue
    .line 106
    iput-object p1, p0, Lc8/Ugq;->this$0:Lc8/Vgq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    return-void
.end method
