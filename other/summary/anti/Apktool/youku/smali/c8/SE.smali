.class public Lc8/SE;
.super Ljava/lang/Object;
.source "WVContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field number:Ljava/lang/String;

.field final synthetic this$0:Lc8/TE;


# direct methods
.method private constructor <init>(Lc8/TE;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lc8/SE;->this$0:Lc8/TE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/TE;Lc8/IE;)V
    .locals 0
    .param p1, "x0"    # Lc8/TE;
    .param p2, "x1"    # Lc8/IE;

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lc8/SE;-><init>(Lc8/TE;)V

    return-void
.end method
