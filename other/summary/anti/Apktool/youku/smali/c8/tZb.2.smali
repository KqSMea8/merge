.class public Lc8/tZb;
.super Ljava/lang/Object;
.source "StandOutWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uZb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropDownListItem"
.end annotation


# instance fields
.field public action:Ljava/lang/Runnable;

.field public description:Ljava/lang/String;

.field public icon:I

.field final synthetic this$0:Lc8/uZb;


# direct methods
.method public constructor <init>(Lc8/uZb;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "icon"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 1235
    iput-object p1, p0, Lc8/tZb;->this$0:Lc8/uZb;

    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    iput p2, p0, Lc8/tZb;->icon:I

    .line 1238
    iput-object p3, p0, Lc8/tZb;->description:Ljava/lang/String;

    .line 1239
    iput-object p4, p0, Lc8/tZb;->action:Ljava/lang/Runnable;

    .line 1240
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lc8/tZb;->description:Ljava/lang/String;

    return-object v0
.end method
