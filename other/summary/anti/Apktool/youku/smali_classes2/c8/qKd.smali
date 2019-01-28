.class public Lc8/qKd;
.super Ljava/lang/Object;
.source "RProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static push_big_bigtext_defaultView(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 49
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_big_bigtext_defaultView"

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_big_bigview_defaultView(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 44
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_big_bigview_defaultView"

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_big_notification_content(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 34
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_big_notification_content"

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_big_notification_date(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 39
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_big_notification_date"

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_big_notification_icon(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 64
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_big_notification_icon"

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_big_notification_title(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 29
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_big_notification_title"

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_expandable_big_image_notification(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 14
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_expandable_big_image_notification"

    const-string/jumbo v2, "layout"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_expandable_big_text_notification(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 19
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_expandable_big_text_notification"

    const-string/jumbo v2, "layout"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_pure_bigview_banner(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 54
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_pure_bigview_banner"

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_pure_bigview_expanded(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 59
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_pure_bigview_expanded"

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static push_pure_pic_notification(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 24
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "push_pure_pic_notification"

    const-string/jumbo v2, "layout"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static stat_sys_third_app_notify(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Lc8/rKd;->getInstance(Landroid/content/Context;)Lc8/rKd;

    move-result-object v0

    .line 69
    .local v0, "resourceReader":Lc8/rKd;
    const-string/jumbo v1, "stat_sys_third_app_notify"

    const-string/jumbo v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lc8/rKd;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method
