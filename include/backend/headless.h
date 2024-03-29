#ifndef BACKEND_HEADLESS_H
#define BACKEND_HEADLESS_H

#include <wlr/backend/headless.h>
#include <wlr/backend/interface.h>

#define HEADLESS_DEFAULT_REFRESH (60 * 1000) // 60 Hz

struct wlr_headless_backend {
	struct wlr_backend backend;
	struct wl_event_loop *event_loop;
	struct wl_list outputs;
	struct wl_listener event_loop_destroy;
	bool started;
};

struct wlr_headless_output {
	struct wlr_output wlr_output;

	struct wlr_headless_backend *backend;
	struct wl_list link;

	struct wl_event_source *frame_timer;
	int frame_delay; // ms
};

struct wlr_headless_backend *headless_backend_from_backend(
	struct wlr_backend *wlr_backend);

#endif
